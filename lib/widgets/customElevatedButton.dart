import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gui_fvm/utils/DataConstants.dart';

import 'customText.dart';

class CustomElevatedButton extends StatelessWidget {
  final onPressed;
  final String title;
  final Color backgroundColor;
  final Color foregroundColor;

  const CustomElevatedButton(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.backgroundColor,
      required this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: CustomText(title: title),
    );
  }
}
