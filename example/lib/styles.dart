import 'package:flutter/material.dart';

/// abstract class which provides predefined and reusable styles in the application for color, buttons, etc.
abstract class Styles {
  static const anylineBlue = Color(0xFF0099FF);
  static const backgroundBlack = Colors.black87;
  static ButtonStyle flatButtonStyle = TextButton.styleFrom(
      padding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      foregroundColor: Colors.white,
      backgroundColor: Styles.anylineBlue);
  static ButtonStyle resultsButtonStyle = TextButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(width: 0, color: Styles.anylineBlue)),
    padding: EdgeInsets.zero,
    backgroundColor: Styles.anylineBlue,
  );
}

/// abstract class which provides predefined and reusable textStyles in the application.
abstract class TextStyles {
  static TextStyle flatButtonTextStyle =
      TextStyle(fontWeight: FontWeight.w800, fontSize: 17);
  static TextStyle flatButtonBackgroundTextStyle =
      TextStyle(fontWeight: FontWeight.w800, fontSize: 40);
  static TextStyle labelTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22);
  static TextStyle timeStampTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w100);
  static TextStyle resultsBackgroundTextStyle =
      TextStyle(fontWeight: FontWeight.w800, fontSize: 50, color: Colors.white);
}
