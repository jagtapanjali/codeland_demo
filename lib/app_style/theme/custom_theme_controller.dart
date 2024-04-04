
import 'package:codeland_demo/data_provider/shared_preference/shared_preference_controller.dart';
import 'package:codeland_demo/app_style/theme/custom_theme_model.dart';
import 'package:codeland_demo/app_style/theme/custom_theme_constant.dart';
import 'package:flutter/material.dart';

CustomThemeController customTheme = CustomThemeController();

class CustomThemeController with ChangeNotifier {
  bool isDarkTheme = false;
  late bool theme = false;

  ThemeMode get currentTheme {
    isDarkTheme = theme;
    return isDarkTheme ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleTheme(bool isMain) async {
    if (isMain) {
      theme = await SharedPreferenceController.shared.getThemeMode();
    } else {
      isDarkTheme = !isDarkTheme;
      await SharedPreferenceController.shared.setThemeMode(isDarkTheme ? true : false);
      theme = await SharedPreferenceController.shared.getThemeMode();
      notifyListeners();
    }
  }

  static ThemeData lightTheme = ThemeData(extensions: const <ThemeExtension<dynamic>>[
    CustomColorScheme(
        primary: ThemeConstant.primary,
        primaryBackground: ThemeConstant.primaryBackground,
        primaryVariant: ThemeConstant.primaryVariant,
        primaryVariant2: ThemeConstant.primaryVariant2,
        primaryVariant3: ThemeConstant.primaryVariant3,

        background: ThemeConstant.background,
        backgroundVariant: ThemeConstant.backgroundVariant,
        backgroundVariant2: ThemeConstant.backgroundVariant2,
        surface: ThemeConstant.surface,
        divider: ThemeConstant.divider,

        text: ThemeConstant.text,
        textDetail: ThemeConstant.textDetail,
        textCaption: ThemeConstant.textCaption,
        textSpecial: ThemeConstant.textSpecial,

        textWhite: ThemeConstant.textWhite,
        textOrange: ThemeConstant.textOrange,
        textYellow: ThemeConstant.textYellow,
        textBlue: ThemeConstant.textBlue,
        textGreen: ThemeConstant.textGreen,
        textGreenVariant: ThemeConstant.textGreenVariant,

        transparent: ThemeConstant.transparent,
        success: ThemeConstant.success,
        error: ThemeConstant.error,

        shimmerPrimary: ThemeConstant.shimmerPrimary,
        shimmerSecondary: ThemeConstant.shimmerSecondary,
        shimmerSurface: ThemeConstant.shimmerSurface
    ),
  ]);

  static ThemeData darkTheme = ThemeData(extensions: const <ThemeExtension<dynamic>>[
    CustomColorScheme(
        primary: ThemeConstant.primaryDark,
        primaryBackground: ThemeConstant.primaryBackgroundDark,
        primaryVariant: ThemeConstant.primaryVariantDark,
        primaryVariant2: ThemeConstant.primaryVariant2Dark,
        primaryVariant3: ThemeConstant.primaryVariant3,

        background: ThemeConstant.backgroundDark,
        backgroundVariant: ThemeConstant.backgroundVariantDark,
        backgroundVariant2: ThemeConstant.backgroundVariant2Dark,
        surface: ThemeConstant.surface,
        divider: ThemeConstant.dividerDark,

        text: ThemeConstant.textDark,
        textDetail: ThemeConstant.textDetailDark,
        textCaption: ThemeConstant.textCaptionDark,
        textSpecial: ThemeConstant.textSpecialDark,

        textWhite: ThemeConstant.textWhiteDark,
        textOrange: ThemeConstant.textOrangeDark,
        textYellow: ThemeConstant.textYellowDark,
        textBlue: ThemeConstant.textBlueDark,
        textGreen: ThemeConstant.textGreenDark,
        textGreenVariant: ThemeConstant.textGreenVariant,

        transparent: ThemeConstant.transparentDark,
        success: ThemeConstant.successDark,
        error: ThemeConstant.errorDark,

        shimmerPrimary: ThemeConstant.shimmerPrimaryDark,
        shimmerSecondary: ThemeConstant.shimmerSecondaryDark,
        shimmerSurface : ThemeConstant.shimmerSurfaceDark
    )
  ]);
}