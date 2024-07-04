import 'package:flutter/material.dart';
import 'package:flutter_openui/screens/home_screen.dart';
import 'package:flutter_openui/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion Shop',
      theme: ThemeData(
        primaryColorLight: AppColors.white,
        primaryColorDark: AppColors.bgColor,
        primaryColor: AppColors.orangeDark,
        cardColor: AppColors.bgCard,
        scaffoldBackgroundColor: AppColors.bgColor,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.inter(fontSize: 35, color: AppColors.black, fontWeight: FontWeight.w600),
          displayMedium: GoogleFonts.inter(fontSize: 20, color: AppColors.black, fontWeight: FontWeight.w500),
          displaySmall: GoogleFonts.inter(fontSize: 14, color: AppColors.black, fontWeight: FontWeight.w500),
          bodyMedium: GoogleFonts.inter(fontSize: 14, color: AppColors.black, fontWeight: FontWeight.w500),
        ),
        chipTheme: ChipThemeData(
          backgroundColor: AppColors.grayLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: AppColors.grayLight),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
