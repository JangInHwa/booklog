import 'package:booklog/app/data/models/book_search_result.dart';
import 'package:booklog/app/data/providers/book_search_api.dart';

class BookSearchRepository {
  final BookSearchApi api;

  BookSearchRepository(this.api);
  Future<List<BookSearchResult>?> get(
    String q, {
    int display = 100,
    int start = 1,
    BookSearchSort sort = BookSearchSort.simillarity,
  }) =>
      api.getBookInfos(
        q,
        display: display,
        start: start,
        sort: sort,
      );
}
