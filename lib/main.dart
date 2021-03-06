import 'package:booklog/core/theme/color_theme.dart';
import 'package:booklog/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.TEST,
      getPages: AppPages.pages,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: BLColors.DARK2,
          elevation: 0,
        ),
        fontFamily: 'Pretendard',
      ),
    );
  }
}
