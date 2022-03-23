import 'package:booklog/app/modules/search/controller.dart';
import 'package:get/get.dart';

class SearchPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchPageController>(() => SearchPageController());
  }
}
