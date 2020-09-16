import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_colors.dart';
part 'app_typography.dart';

class AppTheme {
  static get config => ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        primaryColor: AppColors.darkBlue,
        accentColor: AppColors.darkBlue,
      );
}
