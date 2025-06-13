import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Lullabee Design System Theme
/// 家族の温かさと優しさを表現するテーマ設定
class LullabeeTheme {
  // Color Tokens
  static const Color primaryYellow = Color(0xFFFFD122);
  static const Color secondaryPeach = Color(0xFFF4A28C);
  static const Color tertiaryBlue = Color(0xFFB4D6F1);
  static const Color alternateColor = Color(0xFFFFF6D3);
  
  // Text Colors
  static const Color primaryTextLight = Color(0xFF3C3C3C);
  static const Color secondaryTextLight = Color(0xFF777777);
  static const Color primaryTextDark = Color(0xFFFFFFFF);
  static const Color secondaryTextDark = Color(0xFFB0B0B0);
  
  // Background Colors
  static const Color backgroundLight = Color(0xFFFFFFFF);
  static const Color backgroundDark = Color(0xFF1E1E1E);
  static const Color backgroundDarkSecondary = Color(0xFF2A2A2A);
  
  // Accent Colors
  static const Color accent1 = Color(0xFFFFF3D2);
  static const Color accent2 = Color(0xFFFFE5E5);
  static const Color accent3 = Color(0xFFE3F7FF);
  static const Color accent4 = Color(0xFFFFFBF1);
  
  // Semantic Colors
  static const Color success = Color(0xFFA6D785);
  static const Color warning = Color(0xFFFFE082);
  static const Color error = Color(0xFFFF8A80);
  static const Color info = Color(0xFF90CAF9);
  
  // Spacing Tokens
  static const double spacingXs = 4.0;
  static const double spacingSm = 8.0;
  static const double spacingMd = 16.0;
  static const double spacingLg = 24.0;
  static const double spacingXl = 32.0;
  static const double spacingXxl = 48.0;
  
  // Border Radius Tokens
  static const double radiusXs = 4.0;
  static const double radiusSm = 8.0;
  static const double radiusMd = 12.0;
  static const double radiusLg = 16.0;
  static const double radiusXl = 24.0;
  static const double radiusFull = 9999.0;
  
  // Shadow Definitions
  static List<BoxShadow> shadow1 = [
    BoxShadow(
      color: Color(0x0A000000),
      blurRadius: 4.0,
      offset: Offset(0, 2),
    ),
  ];
  
  static List<BoxShadow> shadow2 = [
    BoxShadow(
      color: Color(0x0D000000),
      blurRadius: 8.0,
      offset: Offset(0, 4),
    ),
  ];
  
  static List<BoxShadow> shadow3 = [
    BoxShadow(
      color: Color(0x10000000),
      blurRadius: 16.0,
      offset: Offset(0, 8),
    ),
  ];
  
  static List<BoxShadow> shadow4 = [
    BoxShadow(
      color: Color(0x14000000),
      blurRadius: 24.0,
      offset: Offset(0, 12),
    ),
  ];
  
  // Light Theme
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: primaryYellow,
        secondary: secondaryPeach,
        tertiary: tertiaryBlue,
        surface: backgroundLight,
        background: backgroundLight,
        error: error,
        onPrimary: Colors.white,
        onSecondary: primaryTextLight,
        onSurface: primaryTextLight,
        onBackground: primaryTextLight,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: backgroundLight,
      fontFamily: GoogleFonts.notoSansJp().fontFamily,
      
      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundLight,
        foregroundColor: primaryTextLight,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.notoSansJp(
          color: primaryTextLight,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      
      // Card Theme
      cardTheme: CardTheme(
        color: backgroundLight,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMd),
        ),
      ),
      
      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryYellow,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: spacingLg, vertical: spacingMd),
          minimumSize: Size(0, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSm),
          ),
          textStyle: GoogleFonts.notoSansJp(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryTextLight,
          side: BorderSide(color: alternateColor, width: 2),
          padding: EdgeInsets.symmetric(horizontal: spacingLg, vertical: spacingMd),
          minimumSize: Size(0, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSm),
          ),
          textStyle: GoogleFonts.notoSansJp(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryYellow,
          padding: EdgeInsets.symmetric(horizontal: spacingMd, vertical: spacingSm),
          textStyle: GoogleFonts.notoSansJp(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: backgroundLight,
        contentPadding: EdgeInsets.symmetric(horizontal: spacingMd, vertical: spacingMd),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: alternateColor, width: 2),
          borderRadius: BorderRadius.circular(radiusSm),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryYellow, width: 2),
          borderRadius: BorderRadius.circular(radiusSm),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: error, width: 2),
          borderRadius: BorderRadius.circular(radiusSm),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: error, width: 2),
          borderRadius: BorderRadius.circular(radiusSm),
        ),
        labelStyle: GoogleFonts.notoSansJp(
          color: secondaryTextLight,
          fontSize: 14,
        ),
        hintStyle: GoogleFonts.notoSansJp(
          color: secondaryTextLight.withOpacity(0.6),
          fontSize: 14,
        ),
      ),
      
      // Floating Action Button Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryYellow,
        foregroundColor: Colors.white,
        elevation: 8,
        shape: CircleBorder(),
      ),
      
      // Icon Theme
      iconTheme: IconThemeData(
        color: primaryTextLight,
        size: 24,
      ),
      
      // Text Theme
      textTheme: TextTheme(
        displayLarge: GoogleFonts.notoSansJp(
          fontSize: 57,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.25,
          color: primaryTextLight,
        ),
        displayMedium: GoogleFonts.notoSansJp(
          fontSize: 45,
          fontWeight: FontWeight.w400,
          color: primaryTextLight,
        ),
        displaySmall: GoogleFonts.notoSansJp(
          fontSize: 36,
          fontWeight: FontWeight.w400,
          color: primaryTextLight,
        ),
        headlineLarge: GoogleFonts.notoSansJp(
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: primaryTextLight,
        ),
        headlineMedium: GoogleFonts.notoSansJp(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: primaryTextLight,
        ),
        headlineSmall: GoogleFonts.notoSansJp(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: primaryTextLight,
        ),
        titleLarge: GoogleFonts.notoSansJp(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: primaryTextLight,
        ),
        titleMedium: GoogleFonts.notoSansJp(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.15,
          color: primaryTextLight,
        ),
        titleSmall: GoogleFonts.notoSansJp(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.1,
          color: primaryTextLight,
        ),
        bodyLarge: GoogleFonts.notoSansJp(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: primaryTextLight,
        ),
        bodyMedium: GoogleFonts.notoSansJp(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: primaryTextLight,
        ),
        bodySmall: GoogleFonts.notoSansJp(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: secondaryTextLight,
        ),
        labelLarge: GoogleFonts.notoSansJp(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          color: primaryTextLight,
        ),
        labelMedium: GoogleFonts.notoSansJp(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          color: primaryTextLight,
        ),
        labelSmall: GoogleFonts.notoSansJp(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          color: secondaryTextLight,
        ),
      ),
    );
  }
  
  // Dark Theme
  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.dark(
        primary: primaryYellow,
        secondary: secondaryPeach,
        tertiary: tertiaryBlue,
        surface: backgroundDarkSecondary,
        background: backgroundDark,
        error: error,
        onPrimary: Colors.black,
        onSecondary: primaryTextDark,
        onSurface: primaryTextDark,
        onBackground: primaryTextDark,
        onError: Colors.white,
      ),
      scaffoldBackgroundColor: backgroundDark,
      fontFamily: GoogleFonts.notoSansJp().fontFamily,
      
      // AppBar Theme
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundDark,
        foregroundColor: primaryTextDark,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.notoSansJp(
          color: primaryTextDark,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      
      // Card Theme
      cardTheme: CardTheme(
        color: backgroundDarkSecondary,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMd),
        ),
      ),
      
      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryYellow,
          foregroundColor: Colors.black,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: spacingLg, vertical: spacingMd),
          minimumSize: Size(0, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSm),
          ),
          textStyle: GoogleFonts.notoSansJp(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryTextDark,
          side: BorderSide(color: alternateColor.withOpacity(0.3), width: 2),
          padding: EdgeInsets.symmetric(horizontal: spacingLg, vertical: spacingMd),
          minimumSize: Size(0, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusSm),
          ),
          textStyle: GoogleFonts.notoSansJp(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryYellow,
          padding: EdgeInsets.symmetric(horizontal: spacingMd, vertical: spacingSm),
          textStyle: GoogleFonts.notoSansJp(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: backgroundDarkSecondary,
        contentPadding: EdgeInsets.symmetric(horizontal: spacingMd, vertical: spacingMd),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white24, width: 2),
          borderRadius: BorderRadius.circular(radiusSm),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryYellow, width: 2),
          borderRadius: BorderRadius.circular(radiusSm),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: error, width: 2),
          borderRadius: BorderRadius.circular(radiusSm),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: error, width: 2),
          borderRadius: BorderRadius.circular(radiusSm),
        ),
        labelStyle: GoogleFonts.notoSansJp(
          color: secondaryTextDark,
          fontSize: 14,
        ),
        hintStyle: GoogleFonts.notoSansJp(
          color: secondaryTextDark.withOpacity(0.6),
          fontSize: 14,
        ),
      ),
      
      // Floating Action Button Theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryYellow,
        foregroundColor: Colors.black,
        elevation: 8,
        shape: CircleBorder(),
      ),
      
      // Icon Theme
      iconTheme: IconThemeData(
        color: primaryTextDark,
        size: 24,
      ),
      
      // Text Theme
      textTheme: TextTheme(
        displayLarge: GoogleFonts.notoSansJp(
          fontSize: 57,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.25,
          color: primaryTextDark,
        ),
        displayMedium: GoogleFonts.notoSansJp(
          fontSize: 45,
          fontWeight: FontWeight.w400,
          color: primaryTextDark,
        ),
        displaySmall: GoogleFonts.notoSansJp(
          fontSize: 36,
          fontWeight: FontWeight.w400,
          color: primaryTextDark,
        ),
        headlineLarge: GoogleFonts.notoSansJp(
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: primaryTextDark,
        ),
        headlineMedium: GoogleFonts.notoSansJp(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: primaryTextDark,
        ),
        headlineSmall: GoogleFonts.notoSansJp(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: primaryTextDark,
        ),
        titleLarge: GoogleFonts.notoSansJp(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: primaryTextDark,
        ),
        titleMedium: GoogleFonts.notoSansJp(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.15,
          color: primaryTextDark,
        ),
        titleSmall: GoogleFonts.notoSansJp(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.1,
          color: primaryTextDark,
        ),
        bodyLarge: GoogleFonts.notoSansJp(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: primaryTextDark,
        ),
        bodyMedium: GoogleFonts.notoSansJp(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: primaryTextDark,
        ),
        bodySmall: GoogleFonts.notoSansJp(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: secondaryTextDark,
        ),
        labelLarge: GoogleFonts.notoSansJp(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          color: primaryTextDark,
        ),
        labelMedium: GoogleFonts.notoSansJp(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          color: primaryTextDark,
        ),
        labelSmall: GoogleFonts.notoSansJp(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.5,
          color: secondaryTextDark,
        ),
      ),
    );
  }
}

// Theme Extension for Custom Properties
extension LullabeeThemeExtension on ThemeData {
  Color get primaryYellow => LullabeeTheme.primaryYellow;
  Color get secondaryPeach => LullabeeTheme.secondaryPeach;
  Color get tertiaryBlue => LullabeeTheme.tertiaryBlue;
  Color get alternateColor => LullabeeTheme.alternateColor;
  
  Color get accent1 => LullabeeTheme.accent1;
  Color get accent2 => LullabeeTheme.accent2;
  Color get accent3 => LullabeeTheme.accent3;
  Color get accent4 => LullabeeTheme.accent4;
  
  Color get success => LullabeeTheme.success;
  Color get warning => LullabeeTheme.warning;
  Color get error => LullabeeTheme.error;
  Color get info => LullabeeTheme.info;
  
  double get spacingXs => LullabeeTheme.spacingXs;
  double get spacingSm => LullabeeTheme.spacingSm;
  double get spacingMd => LullabeeTheme.spacingMd;
  double get spacingLg => LullabeeTheme.spacingLg;
  double get spacingXl => LullabeeTheme.spacingXl;
  double get spacingXxl => LullabeeTheme.spacingXxl;
  
  double get radiusXs => LullabeeTheme.radiusXs;
  double get radiusSm => LullabeeTheme.radiusSm;
  double get radiusMd => LullabeeTheme.radiusMd;
  double get radiusLg => LullabeeTheme.radiusLg;
  double get radiusXl => LullabeeTheme.radiusXl;
  double get radiusFull => LullabeeTheme.radiusFull;
  
  List<BoxShadow> get shadow1 => LullabeeTheme.shadow1;
  List<BoxShadow> get shadow2 => LullabeeTheme.shadow2;
  List<BoxShadow> get shadow3 => LullabeeTheme.shadow3;
  List<BoxShadow> get shadow4 => LullabeeTheme.shadow4;
}