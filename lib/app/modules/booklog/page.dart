import 'package:booklog/app/modules/booklog/widgets/book_log_item.dart';
import 'package:booklog/core/theme/color_theme.dart';
import 'package:booklog/core/theme/text_theme.dart';
import 'package:booklog/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:get/get.dart';

class BookLogPage extends StatelessWidget {
  const BookLogPage({Key? key}) : super(key: key);

  Widget _bookInfo() {
    return MaterialButton(
      onPressed: () {
        Get.toNamed(Routes.DETAIL);
      },
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Image.network(
            'https://bookthumb-phinf.pstatic.net/cover/118/022/11802243.jpg?type=m1&udate=20220317',
            height: 110,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('아몬드', style: BLTextTheme.HEADER3),
              SizedBox(height: 4),
              Text('손원평', style: BLTextTheme.CAPTION1),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BLColors.DARK2,
      appBar: AppBar(
        leading: IconButton(
          onPressed: Get.back,
          icon: const Icon(PhosphorIcons.caret_left),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(PhosphorIcons.dots_three_vertical),
            onSelected: (_) {},
            color: BLColors.DARK3,
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Row(
                  children: const [
                    Icon(PhosphorIcons.trash, size: 18),
                    SizedBox(width: 8),
                    Text("이 북로그 삭제", style: BLTextTheme.BODY1),
                  ],
                ),
                value: "delete",
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 50),
        children: [
          _bookInfo(),
          const BookLogItem(),
          const BookLogItem(),
          const BookLogItem(),
          const BookLogItem(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(PhosphorIcons.plus),
        backgroundColor: BLColors.DARK3,
      ),
    );
  }
}
