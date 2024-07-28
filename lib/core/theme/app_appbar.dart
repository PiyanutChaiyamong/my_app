import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppAppbar {
  static final appbar = AppBarTheme(
    backgroundColor: AppColors.primary,
    elevation: 0,
    shadowColor: AppColors.primary,
    centerTitle: true,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      // fontFamily: GoogleFonts.prompt(fontStyle: FontStyle.normal).fontFamily,
    ),
  );
}
