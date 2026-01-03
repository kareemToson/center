import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double get devicePixelRatio => MediaQuery.of(this).devicePixelRatio;

  bool get isMobile => screenWidth < 600;
  bool get isTablet => screenWidth >= 600 && screenWidth < 1024;
  bool get isDesktop => screenWidth >= 1024;

  double widthPercent(double percent) => screenWidth * (percent / 100);

  double heightPercent(double percent) => screenHeight * (percent / 100);
}
