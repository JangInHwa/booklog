// ignore_for_file: constant_identifier_names

import 'package:booklog/core/theme/color_theme.dart';
import 'package:flutter/material.dart';

abstract class BLTextTheme {
  static const HEADER3 = TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.bold, fontSize: 20, height: 1.2, color: BLColors.TEXT);
  static const BODY1 = TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.normal, fontSize: 16, height: 1.5, color: BLColors.TEXT);
  static const BODY2 = TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.normal, fontSize: 14, height: 1.5, color: BLColors.TEXT);
  static const CAPTION1 = TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.normal, fontSize: 13, height: 1.2, color: BLColors.TEXT40);
  static const CAPTION2 = TextStyle(fontFamily: 'Pretendard', fontWeight: FontWeight.normal, fontSize: 11, height: 1.2, color: BLColors.TEXT40);
}
