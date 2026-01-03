import 'package:center/core/styles/colors_manager.dart';
import 'package:flutter/material.dart';
import '../extensions/responsive.dart';

class StylessManager {
  // Responsive text style methods that require BuildContext
  static TextStyle blackFont20(BuildContext context) => TextStyle(
    fontSize: context.widthPercent(
      4.0,
    ), // Approximately 20px on a 500px wide screen
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  static TextStyle unlockYourTextStyle(BuildContext context) => TextStyle(
    fontSize: context.widthPercent(
      6.0,
    ), // Approximately 30px on a 500px wide screen
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static TextStyle academicPotentialTextStyle(BuildContext context) =>
      TextStyle(
        fontSize: context.widthPercent(
          6.0,
        ), // Approximately 30px on a 500px wide screen
        fontWeight: FontWeight.w700,
        color: ColorsManager.primaryColor,
      );

  static TextStyle welcomeTextStyle(BuildContext context) => TextStyle(
    fontSize: context.widthPercent(
      5.0,
    ), // Approximately 25px on a 500px wide screen
    fontWeight: FontWeight.w600,
    color: Colors.grey,
  );
  static TextStyle welcomeTextStylewhite(BuildContext context) => TextStyle(
    fontSize: context.widthPercent(
      5.5,
    ), // Approximately 25px on a 500px wide screen
    fontWeight: FontWeight.w600,
    color: Colors.blueGrey,
  );
}
