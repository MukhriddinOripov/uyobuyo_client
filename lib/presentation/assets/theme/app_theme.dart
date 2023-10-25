import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/theme_settings.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';
import 'package:uyobuyo_client/presentation/assets/theme/dark_theme.dart';

import 'base_colors.dart';
import 'light_theme.dart';

class AppTheme {
  /// App theme colors
  static late BaseColors colors;

  /// Current app theme
  static late ThemeMode themeType;

  /// App theme data
  static late ThemeData data;

  static late SharedPrefService sharedPrefService;

  static Future<void> init() async {
    try {
      sharedPrefService = await SharedPrefService.initialize();
      colors = _getThemeColors();
      switch (sharedPrefService.getTheme) {
        case SharedPrefService.lightTheme:
          {
            themeType = ThemeMode.light;
          }
          break;
        case SharedPrefService.darkTheme:
          {
            themeType = ThemeMode.dark;
          }
          break;
        default:
          {
            themeType = ThemeMode.system;
          }
          break;
      }

      SystemChrome.setSystemUIOverlayStyle(
        themeType == ThemeMode.light
            ? SystemUiOverlayStyle.dark.copyWith(
                statusBarColor: Colors.black,
                statusBarIconBrightness: Brightness.light,
                systemNavigationBarIconBrightness: Brightness.light,
              )
            : SystemUiOverlayStyle.light.copyWith(
                statusBarColor: colors.fillColor,
                systemNavigationBarIconBrightness: Brightness.light,
              ),
      );

      final TextTheme textTheme = TextTheme(
        /// Using displayLarge for  LargeTitle
        displayLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using displayMedium for Title1
        displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using displaySmall for  Title2
        displaySmall: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using headlineLarge for  Title3
        headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using headlineMedium for Title
        headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using headlineSmall for Bold/ Headline
        headlineSmall: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using bodyLarge for Regular/ Headline
        bodyLarge: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: AppTheme.colors.text900),

        /// Using titleLarge for Bold/ Callaut
        titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using bodyMedium for Regular/ Callaut
        bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppTheme.colors.text900),

        /// Using titleMedium for Subhead
        titleMedium: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using titleSmall for Bold/ Body
        titleSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using bodySmall for Regular/ Body
        bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppTheme.colors.text900),

        /// Using labelLarge for Footnote
        labelLarge: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using labelMedium for Caption1
        labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),

        /// Using labelSmall for Caption2
        labelSmall: TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: AppTheme.colors.text900),
      );

      data = ThemeData(
        canvasColor: colors.background,
        scaffoldBackgroundColor: colors.background,
        primaryColor: colors.primary,
        fontFamily: 'Manrope',
        textTheme: textTheme,
        // unselectedWidgetColor: colors.text100,
        // toggleableActiveColor: colors.primary,
        brightness: themeType == ThemeMode.light ? Brightness.light : Brightness.dark,
        tabBarTheme: TabBarTheme(
          indicator: const BoxDecoration(color: Colors.transparent),
          labelColor: colors.text900,
          unselectedLabelColor: colors.black60,
          labelStyle: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w600),
          unselectedLabelStyle: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500),
          overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: colors.primary,
          // selectionColor: colors.primary15,
          selectionHandleColor: colors.primary,
        ),
        inputDecorationTheme: InputDecorationTheme(
          prefixStyle: textTheme.labelLarge,
          errorStyle: textTheme.titleSmall?.copyWith(color: colors.red),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 9.h),
          hintStyle: textTheme.bodyLarge?.copyWith(color: colors.text500),
          focusColor: Colors.transparent,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusDefault.r),
            borderSide: BorderSide(color: colors.primary),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusDefault.r),
            borderSide: BorderSide(color: colors.red),
          ),
          filled: true,
          fillColor: colors.fillColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusDefault.r),
            // borderSide: BorderSide(color: colors.surfaceIndented),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusDefault.r),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(kBorderRadiusDefault.r),
            // borderSide: BorderSide(color: colors.surfaceIndented),
          ),
        ),
        checkboxTheme: CheckboxThemeData(
          side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(color: AppTheme.colors.text900),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: colors.primary,
          unselectedItemColor: colors.text500,
          selectedLabelStyle: textTheme.labelSmall?.copyWith(color: AppTheme.colors.primary, fontWeight: FontWeight.w500, fontSize: 10.sp),
          unselectedLabelStyle: textTheme.labelSmall?.copyWith(fontSize: 10.sp, fontWeight: FontWeight.w500),
          backgroundColor: colors.surface,
        ),
      );
    } catch (_) {}
  }

  static BaseColors _getThemeColors() {
    switch (sharedPrefService.getTheme) {
      case SharedPrefService.lightTheme:
        {
          return LightTheme(
              // primaryColorIndex: primaryColorIndex,
              // vColors: variableColors[SharedPrefService.lightTheme]!,
              constColors: constantColors[SharedPrefService.lightTheme]!);
        }
      case SharedPrefService.darkTheme:
        {
          return DarkTheme(
              // primaryColorIndex: primaryColorIndex,
              // vColors: variableColors[SharedPrefService.darkTheme]!,
              constColors: constantColors[SharedPrefService.darkTheme]!);
        }
      case SharedPrefService.systemTheme:
        {
          final Brightness brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
          if (brightness == Brightness.dark) {
            return DarkTheme(
                // primaryColorIndex: primaryColorIndex,
                // vColors: variableColors[SharedPrefService.darkTheme]!,
                constColors: constantColors[SharedPrefService.darkTheme]!);
          } else {
            return LightTheme(
                // primaryColorIndex: primaryColorIndex,
                // vColors: variableColors[SharedPrefService.lightTheme]!,
                constColors: constantColors[SharedPrefService.lightTheme]!);
          }
        }
      default:
        {
          return LightTheme(
              // primaryColorIndex: primaryColorIndex,
              // vColors: variableColors[SharedPrefService.lightTheme]!,
              constColors: constantColors[SharedPrefService.lightTheme]!);
        }
    }
  }
}
