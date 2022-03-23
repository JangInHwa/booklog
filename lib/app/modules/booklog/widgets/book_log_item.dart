import 'package:booklog/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class BookLogItem extends StatelessWidget {
  const BookLogItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Row(
            children: const [
              Text('14p~17p', style: BLTextTheme.CAPTION2),
              Text('·', style: BLTextTheme.CAPTION2),
              Text('12월 10일', style: BLTextTheme.CAPTION2),
            ],
          ),
          const SizedBox(height: 8),
          const Text('orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', style: BLTextTheme.BODY1),
        ],
      ),
    );
  }
}
