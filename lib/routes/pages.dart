import 'package:booklog/app/modules/test/page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(name: Routes.TEST, page: () => const TestPage()),
  ];
}
