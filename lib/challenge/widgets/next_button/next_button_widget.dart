import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroungColor;
  final Color fontColor;
  final Color overlayColor;
  final VoidCallback onTap;

  NextButtonWidget({
    required this.label,
    required this.backgroungColor,
    required this.fontColor,
    required this.overlayColor,
    required this.onTap,
  });

  NextButtonWidget.green({required String label, required VoidCallback onTap})
      : this.backgroungColor = AppColors.darkGreen,
        this.fontColor = AppColors.white,
        this.label = label,
        this.overlayColor = Colors.greenAccent.shade400,
        this.onTap = onTap;

  NextButtonWidget.white({required String label, required VoidCallback onTap})
      : this.backgroungColor = AppColors.white,
        this.fontColor = AppColors.grey,
        this.label = label,
        this.overlayColor = Colors.grey.shade200,
        this.onTap = onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(overlayColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(
            backgroungColor,
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              color: AppColors.border,
            ),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
