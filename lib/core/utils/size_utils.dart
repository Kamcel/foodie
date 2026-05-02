import 'package:flutter/widgets.dart';

class SizeUtils {
  static late double _screenWidth;
  static late double _screenHeight;
  static late double _scaleFactor;

  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _screenWidth = size.width;
    _screenHeight = size.height;
    _scaleFactor = _screenWidth / 375.0;
  }

  static double scale(double value) => value * _scaleFactor;

  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;

  static double wp(double percent) => _screenWidth * (percent / 100);
  static double hp(double percent) => _screenHeight * (percent / 100);
}
