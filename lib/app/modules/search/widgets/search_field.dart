import 'package:booklog/core/theme/color_theme.dart';
import 'package:booklog/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class SearchField extends StatelessWidget {
  final bool autofocus;
  final TextEditingController? controller;
  final String hintText;
  const SearchField({Key? key, this.controller, this.hintText = '', this.autofocus = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        color: BLColors.DARK2,
        child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Icon(PhosphorIcons.magnifying_glass, color: BLColors.TEXT40),
            ),
            Expanded(
              child: TextField(
                autofocus: autofocus,
                style: BLTextTheme.BODY1,
                cursorColor: BLColors.TEXT40,
                maxLength: 100,
                controller: controller,
                cursorWidth: 1,
                cursorHeight: 20,
                decoration: InputDecoration(
                  hintText: hintText,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
                  border: InputBorder.none,
                  counterText: "",
                  fillColor: BLColors.DARK2,
                  filled: true,
                  hintStyle: const TextStyle(fontSize: 16, color: BLColors.TEXT40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
