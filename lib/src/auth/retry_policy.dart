import 'dart:math';

/// Pure retry/backoff decisions — no timing, no I/O — so it unit-tests cleanly.
/// Retries network errors, `429`, and `5xx` with exponential backoff + full
/// jitter, honoring `Retry-After`.
class RetryPolicy {
  const RetryPolicy({
    this.maxRetries = 3,
    this.baseDelay = const Duration(milliseconds: 200),
    this.maxDelay = const Duration(seconds: 20),
  });

  final int maxRetries;
  final Duration baseDelay;
  final Duration maxDelay;

  /// [attempt] is 1-based (1 = the first try that just failed).
  bool shouldRetry({required int attempt, int? statusCode, required bool isNetworkError}) {
    if (attempt > maxRetries) return false;
    if (isNetworkError) return true;
    if (statusCode == null) return false;
    return statusCode == 429 || (statusCode >= 500 && statusCode <= 599);
  }

  /// Deterministic exponential ceiling before jitter.
  Duration backoffCeiling(int attempt) {
    final exp = pow(2, max(0, attempt - 1)).toDouble();
    final ms = min(maxDelay.inMilliseconds.toDouble(), baseDelay.inMilliseconds * exp);
    return Duration(milliseconds: ms.toInt());
  }

  /// Final wait. Honors [retryAfter] when larger; else full jitter.
  /// [jitter] (0..1) is injectable so tests are deterministic.
  Duration delay(int attempt, {Duration? retryAfter, double? jitter}) {
    final j = (jitter ?? Random().nextDouble()).clamp(0.0, 1.0);
    final ceiling = backoffCeiling(attempt).inMilliseconds;
    final jittered = (ceiling * j).toInt();
    if (retryAfter != null && retryAfter.inMilliseconds > jittered) {
      return Duration(milliseconds: min(maxDelay.inMilliseconds, retryAfter.inMilliseconds));
    }
    return Duration(milliseconds: jittered);
  }

  /// Parse a `Retry-After` header (delta-seconds only; HTTP-date ignored).
  static Duration? parseRetryAfter(String? value) {
    if (value == null) return null;
    final secs = int.tryParse(value.trim());
    if (secs == null || secs < 0) return null;
    return Duration(seconds: secs);
  }
}
