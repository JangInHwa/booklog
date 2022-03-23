import 'package:booklog/app/modules/booklog/page.dart';
import 'package:booklog/app/modules/detail/page.dart';
import 'package:booklog/app/modules/home/page.dart';
import 'package:booklog/app/modules/search/binding.dart';
import 'package:booklog/app/modules/search/page.dart';
import 'package:booklog/app/modules/test/page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(name: Routes.TEST, page: () => const TestPage()),
    GetPage(name: Routes.HOME, page: () => const HomePage()),
    GetPage(name: Routes.SEARCH, page: () => const SearchPage(), binding: SearchPageBinding()),
    GetPage(name: Routes.BOOKLOG, page: () => const BookLogPage()),
    GetPage(name: Routes.DETAIL, page: () => const DetailPage()),
  ];
}
