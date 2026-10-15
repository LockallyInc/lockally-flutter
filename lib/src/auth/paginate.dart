/// A page of results from a cursor-paginated endpoint.
class Page<T> {
  Page(this.items, this.nextCursor);
  final List<T> items;
  final String? nextCursor;
}

/// Iterate every item across all pages of a `cursor` / `next_cursor` endpoint as
/// a [Stream]. A loop guard caps pages so a misbehaving cursor can't spin.
///
/// ```dart
/// await for (final c in paginate((cursor) async {
///   final r = await contactsApi.v1ContactsGet(cursor: cursor);
///   return Page(r.data!.toList(), r.nextCursor);
/// })) { syncLocally(c); }
/// ```
Stream<T> paginate<T>(
  Future<Page<T>> Function(String? cursor) fetch, {
  int maxPages = 10000,
}) async* {
  String? cursor;
  var pages = 0;
  final seen = <String>{};
  while (true) {
    if (pages >= maxPages) {
      throw StateError('paginate exceeded maxPages ($maxPages) — possible cursor loop');
    }
    final page = await fetch(cursor);
    pages++;
    for (final item in page.items) {
      yield item;
    }
    final next = page.nextCursor;
    if (next == null || next.isEmpty || next == cursor || !seen.add(next)) return;
    cursor = next;
  }
}

/// Drain every page into a list. Prefer [paginate] for large result sets.
Future<List<T>> collect<T>(
  Future<Page<T>> Function(String? cursor) fetch, {
  int maxPages = 10000,
}) async {
  final out = <T>[];
  await for (final item in paginate(fetch, maxPages: maxPages)) {
    out.add(item);
  }
  return out;
}
