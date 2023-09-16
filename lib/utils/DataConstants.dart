import 'package:flutter/material.dart';
import 'color_schemes.g.dart';

class DataConstants {
  static ThemeData themeData = ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
  );

  static String folderPath = "";

  static Color buttonBackground = themeData.buttonTheme.colorScheme!.background;

  static Color buttonForeground =
      themeData.buttonTheme.colorScheme!.surfaceTint;
}
