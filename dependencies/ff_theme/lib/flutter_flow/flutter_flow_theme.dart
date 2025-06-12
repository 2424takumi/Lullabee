// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';

SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();

  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color background;
  late Color foreground;
  late Color card;
  late Color cardforeground;
  late Color popover;
  late Color popoverforeground;
  late Color primarycolor;
  late Color primaryforeground;
  late Color secondarycolor;
  late Color secondaryforeground;
  late Color muted;
  late Color mutedforeground;
  late Color accent;
  late Color accentforeground;
  late Color destructive;
  late Color destructiveforeground;
  late Color border;
  late Color input;
  late Color ring;
  late Color borderdestructive;
  late Color chart1;
  late Color chart2;
  late Color chart3;
  late Color chart4;
  late Color chart5;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  bool get displayLargeIsCustom => typography.displayLargeIsCustom;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  bool get displayMediumIsCustom => typography.displayMediumIsCustom;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  bool get displaySmallIsCustom => typography.displaySmallIsCustom;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  bool get headlineLargeIsCustom => typography.headlineLargeIsCustom;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  bool get headlineMediumIsCustom => typography.headlineMediumIsCustom;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  bool get headlineSmallIsCustom => typography.headlineSmallIsCustom;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  bool get titleLargeIsCustom => typography.titleLargeIsCustom;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  bool get titleMediumIsCustom => typography.titleMediumIsCustom;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  bool get titleSmallIsCustom => typography.titleSmallIsCustom;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  bool get labelLargeIsCustom => typography.labelLargeIsCustom;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  bool get labelMediumIsCustom => typography.labelMediumIsCustom;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  bool get labelSmallIsCustom => typography.labelSmallIsCustom;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  bool get bodyLargeIsCustom => typography.bodyLargeIsCustom;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  bool get bodyMediumIsCustom => typography.bodyMediumIsCustom;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  bool get bodySmallIsCustom => typography.bodySmallIsCustom;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFFFD122);
  late Color secondary = const Color(0xFFF4A28C);
  late Color tertiary = const Color(0xFFB4D6F1);
  late Color alternate = const Color(0xFFFFF6D3);
  late Color primaryText = const Color(0xFF3C3C3C);
  late Color secondaryText = const Color(0xFF777777);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFFFD122);
  late Color accent1 = const Color(0xFFFFF3D2);
  late Color accent2 = const Color(0xFFFFE5E5);
  late Color accent3 = const Color(0xFFE3F7FF);
  late Color accent4 = const Color(0xFFFFFBF1);
  late Color success = const Color(0xFFA6D785);
  late Color warning = const Color(0xFFFFE082);
  late Color error = const Color(0xFFFF8A80);
  late Color info = const Color(0xFF90CAF9);

  late Color background = const Color(0xFFFFFFFF);
  late Color foreground = const Color(0xFF020611);
  late Color card = const Color(0xFFFFFFFF);
  late Color cardforeground = const Color(0xFF020611);
  late Color popover = const Color(0xFFFFFFFF);
  late Color popoverforeground = const Color(0xFF020611);
  late Color primarycolor = const Color(0xFF18181B);
  late Color primaryforeground = const Color(0xFFF8F9FA);
  late Color secondarycolor = const Color(0xFFF3F4F6);
  late Color secondaryforeground = const Color(0xFF111827);
  late Color muted = const Color(0xFFF3F4F6);
  late Color mutedforeground = const Color(0xFF6B7280);
  late Color accent = const Color(0xFFF3F4F6);
  late Color accentforeground = const Color(0xFF111827);
  late Color destructive = const Color(0xFFEE4444);
  late Color destructiveforeground = const Color(0xFFF8F9FA);
  late Color border = const Color(0xFFE5E7EB);
  late Color input = const Color(0xFFE5E7EB);
  late Color ring = const Color(0xFFA1A1AA);
  late Color borderdestructive = const Color(0x80EE4444);
  late Color chart1 = const Color(0xFF2A9E90);
  late Color chart2 = const Color(0xFFE76E51);
  late Color chart3 = const Color(0xFF274754);
  late Color chart4 = const Color(0xFFE8C468);
  late Color chart5 = const Color(0xFFF4A462);
}

abstract class Typography {
  String get displayLargeFamily;
  bool get displayLargeIsCustom;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  bool get displayMediumIsCustom;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  bool get displaySmallIsCustom;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  bool get headlineLargeIsCustom;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  bool get headlineMediumIsCustom;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  bool get headlineSmallIsCustom;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  bool get titleLargeIsCustom;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  bool get titleMediumIsCustom;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  bool get titleSmallIsCustom;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  bool get labelLargeIsCustom;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  bool get labelMediumIsCustom;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  bool get labelSmallIsCustom;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  bool get bodyLargeIsCustom;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  bool get bodyMediumIsCustom;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  bool get bodySmallIsCustom;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Noto Sans JP';
  bool get displayLargeIsCustom => false;
  TextStyle get displayLarge => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 64.0,
      );
  String get displayMediumFamily => 'Noto Sans JP';
  bool get displayMediumIsCustom => false;
  TextStyle get displayMedium => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 44.0,
      );
  String get displaySmallFamily => 'Noto Sans JP';
  bool get displaySmallIsCustom => false;
  TextStyle get displaySmall => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 36.0,
      );
  String get headlineLargeFamily => 'Noto Sans JP';
  bool get headlineLargeIsCustom => false;
  TextStyle get headlineLarge => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Noto Sans JP';
  bool get headlineMediumIsCustom => false;
  TextStyle get headlineMedium => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 28.0,
      );
  String get headlineSmallFamily => 'Noto Sans JP';
  bool get headlineSmallIsCustom => false;
  TextStyle get headlineSmall => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get titleLargeFamily => 'Noto Sans JP';
  bool get titleLargeIsCustom => false;
  TextStyle get titleLarge => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      );
  String get titleMediumFamily => 'Noto Sans JP';
  bool get titleMediumIsCustom => false;
  TextStyle get titleMedium => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Noto Sans JP';
  bool get titleSmallIsCustom => false;
  TextStyle get titleSmall => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Noto Sans JP';
  bool get labelLargeIsCustom => false;
  TextStyle get labelLarge => GoogleFonts.notoSansJp(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Noto Sans JP';
  bool get labelMediumIsCustom => false;
  TextStyle get labelMedium => GoogleFonts.notoSansJp(
        color: theme.secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get labelSmallFamily => 'Noto Sans JP';
  bool get labelSmallIsCustom => false;
  TextStyle get labelSmall => GoogleFonts.notoSansJp(
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 12.0,
      );
  String get bodyLargeFamily => 'Noto Sans JP';
  bool get bodyLargeIsCustom => false;
  TextStyle get bodyLarge => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
      );
  String get bodyMediumFamily => 'Noto Sans JP';
  bool get bodyMediumIsCustom => false;
  TextStyle get bodyMedium => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14.0,
      );
  String get bodySmallFamily => 'Noto Sans JP';
  bool get bodySmallIsCustom => false;
  TextStyle get bodySmall => GoogleFonts.notoSansJp(
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFFFD122);
  late Color secondary = const Color(0xFFF4A28C);
  late Color tertiary = const Color(0xFFB4D6F1);
  late Color alternate = const Color(0xFF2A2A2A);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFFAAAAAA);
  late Color primaryBackground = const Color(0xFF1E1E1E);
  late Color secondaryBackground = const Color(0xFF2A2A2A);
  late Color accent1 = const Color(0xFFFFF3D2);
  late Color accent2 = const Color(0xFFFFE5E5);
  late Color accent3 = const Color(0xFFE3F7FF);
  late Color accent4 = const Color(0xFF2C2C2C);
  late Color success = const Color(0xFF9CCC65);
  late Color warning = const Color(0xFFFFEB3B);
  late Color error = const Color(0xFFEF9A9A);
  late Color info = const Color(0xFF81D4FA);

  late Color background = const Color(0xFF020611);
  late Color foreground = const Color(0xFFF8F9FA);
  late Color card = const Color(0xFF020611);
  late Color cardforeground = const Color(0xFFF8F9FA);
  late Color popover = const Color(0xFF020611);
  late Color popoverforeground = const Color(0xFFF8F9FA);
  late Color primarycolor = const Color(0xFFFAFAFA);
  late Color primaryforeground = const Color(0xFF020611);
  late Color secondarycolor = const Color(0xFF1F2937);
  late Color secondaryforeground = const Color(0xFFF8F9FA);
  late Color muted = const Color(0xFF1F2937);
  late Color mutedforeground = const Color(0xFF9CA2AE);
  late Color accent = const Color(0xFF1F2937);
  late Color accentforeground = const Color(0xFFF8F9FA);
  late Color destructive = const Color(0xFF7F1D1D);
  late Color destructiveforeground = const Color(0xFFF8F9FA);
  late Color border = const Color(0xFF242F3E);
  late Color input = const Color(0xFF1F2937);
  late Color ring = const Color(0xFFA1A1AA);
  late Color borderdestructive = const Color(0x807F1D1D);
  late Color chart1 = const Color(0xFF2662D9);
  late Color chart2 = const Color(0xFF2EB88A);
  late Color chart3 = const Color(0xFFE88C30);
  late Color chart4 = const Color(0xFFAF57DB);
  late Color chart5 = const Color(0xFFE23670);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    TextStyle? font,
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
    String? package,
  }) {
    if (useGoogleFonts && fontFamily != null) {
      font = GoogleFonts.getFont(fontFamily,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle);
    }

    return font != null
        ? font.copyWith(
            color: color ?? this.color,
            fontSize: fontSize ?? this.fontSize,
            letterSpacing: letterSpacing ?? this.letterSpacing,
            fontWeight: fontWeight ?? this.fontWeight,
            fontStyle: fontStyle ?? this.fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          )
        : copyWith(
            fontFamily: fontFamily,
            package: package,
            color: color,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          );
  }
}
