import 'package:booklog/app/data/models/book_search_result.dart';
import 'package:booklog/core/values/naver_book_api_key.dart';
import 'package:get/get.dart';

enum BookSearchSort {
  simillarity,
  date,
  count,
}

class BookSearchApi extends GetConnect {
  Future<List<BookSearchResult>?> getBookInfos(String q, {int display = 100, int start = 1, BookSearchSort sort = BookSearchSort.simillarity}) async {
    String sortString = '';
    if (sort == BookSearchSort.simillarity) {
      sortString = 'sim';
    } else if (sort == BookSearchSort.date) {
      sortString = 'date';
    } else if (sort == BookSearchSort.count) {
      sortString = 'count';
    }
    Response response = await get(
      'https://openapi.naver.com/v1/search/book.json',
      headers: {
        'X-Naver-Client-Id': NaverBookApi.clientId,
        'X-Naver-Client-Secret': NaverBookApi.clientSecret,
      },
      query: {
        'query': q,
        'display': display.toString(),
        'start': start.toString(),
        'sort': sortString,
      },
    );
    if (response.statusCode == 200) {
      List<dynamic> result = response.body['items'];
      List<BookSearchResult> bookSearchResults = result.map((e) => BookSearchResult.fromJson(e)).toList();
      return bookSearchResults;
    } else {
      return null;
    }
  }
}
