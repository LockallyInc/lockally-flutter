import 'dart:convert';

/// Typed error mapped from a non-2xx API response. The API returns RFC 7807
/// `application/problem+json`; the fields let callers branch on `status`/`code`
/// and log [requestId] for support.
class LockallyException implements Exception {
  LockallyException({
    required this.status,
    required this.message,
    this.code,
    this.requestId,
  });

  final int status;
  final String message;
  final String? code;
  final String? requestId;

  bool get isRetryable => status == 429 || (status >= 500 && status <= 599);

  @override
  String toString() => 'LockallyException($status${code != null ? ' $code' : ''}): $message';

  /// Parse a `problem+json` body (falls back to a generic message).
  factory LockallyException.fromResponse({
    required int status,
    Object? body,
    String? requestId,
  }) {
    Map<String, dynamic>? obj;
    if (body is Map<String, dynamic>) {
      obj = body;
    } else if (body is String && body.isNotEmpty) {
      try {
        final decoded = jsonDecode(body);
        if (decoded is Map<String, dynamic>) obj = decoded;
      } catch (_) {/* non-JSON body */}
    }
    if (obj == null) {
      return LockallyException(status: status, message: 'HTTP $status', requestId: requestId);
    }
    final message = (obj['detail'] ?? obj['title'] ?? 'HTTP $status').toString();
    final code = (obj['code'] ?? obj['type'])?.toString();
    return LockallyException(
      status: status,
      message: message,
      code: code,
      requestId: requestId ?? obj['request_id']?.toString(),
    );
  }
}
