import 'package:booklog/app/data/models/book_search_result.dart';
import 'package:booklog/app/data/providers/book_search_api.dart';
import 'package:booklog/app/modules/search/repository.dart';
import 'package:get/get.dart';

class SearchPageController extends GetxController {
  SearchPageController();
  BookSearchRepository bookSearchRepository = BookSearchRepository(BookSearchApi());

  var searchText = ''.obs;
  Rx<List<BookSearchResult>?> bookSearchResults = Rx(null);

  @override
  void onInit() {
    debounce<String>(searchText, (value) => fetchBookInfo(value), time: const Duration(seconds: 1));
    super.onInit();
  }

  void onSearchFieldChanged(String value) {
    searchText.value = value;
  }

  Future fetchBookInfo(String q) async {
    bookSearchResults.value = await bookSearchRepository.get(q);
  }
}
