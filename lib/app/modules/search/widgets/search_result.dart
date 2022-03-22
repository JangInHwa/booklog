import 'package:booklog/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final ImageProvider thumbnail;
  final String title;
  final String author;

  const SearchResult({Key? key, required this.thumbnail, required this.title, required this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 12, right: 72, bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: thumbnail, height: 80),
          const SizedBox(width: 16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: BLTextTheme.BODY2,
                ),
                const SizedBox(height: 2),
                Text(author, style: BLTextTheme.CAPTION1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
