import 'package:booklog/app/modules/search/widgets/search_field.dart';
import 'package:booklog/app/modules/search/widgets/search_result.dart';
import 'package:booklog/core/theme/color_theme.dart';
import 'package:booklog/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
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
                  const Expanded(child: SearchField(autofocus: true, hintText: '제목, 저자 또는 ISBN 검색')),
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
              child: RawScrollbar(
                thumbColor: BLColors.TEXT40,
                radius: const Radius.circular(100),
                interactive: false,
                thickness: 4,
                child: ListView(
                  children: const [
                    SearchResult(
                      thumbnail: NetworkImage('https://bookthumb-phinf.pstatic.net/cover/118/022/11802243.jpg?&udate=20220317'),
                      title: '아몬드 (손원평 장편소설,제10회 창비 청소년문학상 수상작)',
                      author: '손원평',
                    ),
                    SearchResult(
                      thumbnail: NetworkImage('https://bookthumb-phinf.pstatic.net/cover/118/022/11802243.jpg?&udate=20220317'),
                      title: '아몬드 (손원평 장편소설,제10회 창비 청소년문학상 수상작)',
                      author: '손원평',
                    ),
                    SearchResult(
                      thumbnail: NetworkImage('https://bookthumb-phinf.pstatic.net/cover/118/022/11802243.jpg?&udate=20220317'),
                      title: '아몬드 (손원평 장편소설,제10회 창비 청소년문학상 수상작)',
                      author: '손원평',
                    ),
                    SearchResult(
                      thumbnail: NetworkImage('https://bookthumb-phinf.pstatic.net/cover/118/022/11802243.jpg?&udate=20220317'),
                      title: '아몬드 (손원평 장편소설,제10회 창비 청소년문학상 수상작)',
                      author: '손원평',
                    ),
                    SearchResult(
                      thumbnail: NetworkImage('https://bookthumb-phinf.pstatic.net/cover/118/022/11802243.jpg?&udate=20220317'),
                      title: '아몬드 (손원평 장편소설,제10회 창비 청소년문학상 수상작)',
                      author: '손원평',
                    ),
                    SearchResult(
                      thumbnail: NetworkImage('https://bookthumb-phinf.pstatic.net/cover/118/022/11802243.jpg?&udate=20220317'),
                      title: '아몬드 (손원평 장편소설,제10회 창비 청소년문학상 수상작)',
                      author: '손원평',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
