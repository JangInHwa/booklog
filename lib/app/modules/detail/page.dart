import 'package:booklog/core/theme/color_theme.dart';
import 'package:booklog/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  Widget _bookMetaInfo() {
    return Container(
      color: BLColors.DARK2,
      padding: const EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://bookthumb-phinf.pstatic.net/cover/118/022/11802243.jpg?type=m1&udate=20220317', height: 140, fit: BoxFit.cover),
          const SizedBox(width: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('제목', style: BLTextTheme.CAPTION1),
              SizedBox(height: 8),
              Text('아몬드', style: BLTextTheme.HEADER2),
              SizedBox(height: 16),
              Text('저자', style: BLTextTheme.CAPTION1),
              SizedBox(height: 8),
              Text('손원평', style: BLTextTheme.HEADER2),
            ],
          ),
        ],
      ),
    );
  }

  Widget _progress() {
    return Container(
      color: BLColors.DARK2,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('진행도', style: BLTextTheme.CAPTION1),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Text('72', style: BLTextTheme.HEADER1),
              Text('/263 페이지', style: TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.normal, fontSize: 16, height: 1.2, color: BLColors.TEXT40)),
            ],
          ),
          const SizedBox(height: 24),
          const SizedBox(
            height: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              child: LinearProgressIndicator(
                value: 72 / 263,
                color: Color(0xFF24A641),
                backgroundColor: BLColors.DARK3,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(PhosphorIcons.caret_left),
        ),
      ),
      backgroundColor: BLColors.DARK2,
      body: ListView(
        children: [
          _bookMetaInfo(),
          Container(height: 24, color: BLColors.DARK1),
          _progress(),
        ],
      ),
    );
  }
}
