import 'package:booklog/app/modules/search/controller.dart';
import 'package:booklog/app/modules/search/widgets/search_field.dart';
import 'package:booklog/app/modules/search/widgets/search_result.dart';
import 'package:booklog/core/theme/color_theme.dart';
import 'package:booklog/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends GetView<SearchPageController> {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLColors.DARK1,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 16, bottom: 16),
              child: Row(
                children: [
                  Expanded(
                    child: SearchField(
                      autofocus: true,
                      hintText: '제목, 저자 또는 ISBN 검색',
                      onChanged: controller.onSearchFieldChanged,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Text('취소', style: BLTextTheme.BODY1),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Obx(
                () {
                  if (controller.bookSearchResults.value != null) {
                    return RawScrollbar(
                        thumbColor: BLColors.TEXT40,
                        radius: const Radius.circular(100),
                        interactive: false,
                        thickness: 4,
                        child: ListView(
                          children: controller.bookSearchResults.value!
                              .map(
                                (e) => SearchResult(
                                  thumbnail: NetworkImage(e.thumbnailPath),
                                  title: e.title,
                                  author: e.author,
                                ),
                              )
                              .toList(),
                        ));
                  } else {
                    return Container();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
