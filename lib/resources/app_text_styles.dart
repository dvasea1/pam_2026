import 'package:flutter/material.dart';
import 'package:test_pam/resources/app_colors.dart';

class FontsFamily {
  static String senBold = 'SenBold';
  static String senMedium = 'SenMedium';
  static String senRegular = 'SenRegular';
}

class AppTextStyles {
  static TextStyle bold = TextStyle(fontFamily: FontsFamily.senBold, fontSize: 14, color: AppColors.primaryColor);
  static TextStyle regular = TextStyle(
    fontFamily: FontsFamily.senRegular,
    fontSize: 14,
    color: AppColors.textNeutralTertiaryColor,
  );
  static TextStyle regularText = TextStyle(
    fontFamily: FontsFamily.senRegular,
    fontSize: 16,
    color: AppColors.textColor,
  );
  static TextStyle boldText = TextStyle(
    fontFamily: FontsFamily.senBold,
    fontSize: 16,
    color: AppColors.textColor,
  );
}
