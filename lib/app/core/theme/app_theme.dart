import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_colors.dart';
part 'app_typography.dart';

class AppTheme {
  static ThemeData get config => ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(),
        primaryColor: AppColors.darkBlue,
        accentColor: AppColors.darkBlue,
      );
  static BoxShadow get boxShadow => BoxShadow(
        color: AppColors.shadow,
        offset: Offset(0, 20),
        blurRadius: 12,
        spreadRadius: -2,
      );
}
