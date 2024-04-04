import 'package:flutter/material.dart';

@immutable
class CustomColorScheme extends ThemeExtension<CustomColorScheme> {
  final Color? primary;
  final Color? primaryBackground;
  final Color? primaryVariant;
  final Color? primaryVariant2;
  final Color? primaryVariant3;

  final Color? background;
  final Color? backgroundVariant;
  final Color? backgroundVariant2;
  final Color? surface;
  final Color? divider;

  final Color? text;
  final Color? textDetail;
  final Color? textCaption;
  final Color? textSpecial;

  final Color? textWhite;
  final Color? textOrange;
  final Color? textYellow;
  final Color? textBlue;
  final Color? textGreen;
  final Color? textGreenVariant;

  final Color? transparent;
  final Color? success;
  final Color? error;

  final Color? shimmerPrimary;
  final Color? shimmerSecondary;
  final Color? shimmerSurface;

  const CustomColorScheme({
    required this.primary,
    required this.primaryBackground,
    required this.primaryVariant,
    required this.primaryVariant2,
    required this.primaryVariant3,

    required this.background,
    required this.backgroundVariant,
    required this.backgroundVariant2,
    required this.surface,
    required this.divider,

    required this.text,
    required this.textDetail,
    required this.textCaption,
    required this.textSpecial,

    required this.textWhite,
    required this.textOrange,
    required this.textYellow,
    required this.textBlue,
    required this.textGreen,
    required this.textGreenVariant,

    required this.transparent,
    required this.success,
    required this.error,

    required this.shimmerPrimary,
    required this.shimmerSecondary,
    required this.shimmerSurface,

  });

  @override
  CustomColorScheme copyWith({
    Color? primary,
    Color? primaryBackground,
    Color? primaryVariant,
    Color? primaryVariant1,
    Color? background,
    Color? backgroundVariant,
    Color? backgroundVariant1,
    Color? surface,
    Color? divider,
    Color? text,
    Color? textDetail,
    Color? textCaption,
    Color? textSpecial,
    Color? textWhite,
    Color? textOrange,
    Color? textYellow,
    Color? textBlue,
    Color? textGreen,
    Color? textGreenVariant,
    Color? transparent,
    Color? success,
    Color? error,
    Color? shimmerPrimary,
    Color? shimmerSecondary,
    Color? shimmerSurface,
  }) {
    return CustomColorScheme(
      primary: primary ?? this.primary,
      primaryBackground: primaryBackground ?? this.primaryBackground,
      primaryVariant: primaryVariant ?? this.primaryVariant,
      primaryVariant2: primaryVariant1 ?? this.primaryVariant2,
      primaryVariant3: primaryVariant1 ?? this.primaryVariant3,

      background: background ?? this.background,
      backgroundVariant: backgroundVariant ?? this.backgroundVariant,
      backgroundVariant2: backgroundVariant1 ?? this.backgroundVariant2,
      surface: surface ?? this.surface,
      divider: divider ?? this.divider,

      text: text ?? this.text,
      textDetail: textDetail ?? this.textDetail,
      textCaption: textCaption ?? this.textCaption,
      textSpecial: textSpecial ?? this.textSpecial,

      textWhite: textWhite ?? this.textWhite,
      textOrange: textOrange ?? this.textOrange,
      textYellow: textYellow ?? this.textYellow,
      textBlue: textBlue ?? this.textBlue,
      textGreen: textGreen ?? this.textGreen,
      textGreenVariant: textGreenVariant ?? this.textGreenVariant,

      transparent: transparent ?? this.transparent,
      success: success ?? this.success,
      error: error ?? this.error,

      shimmerPrimary: success ?? this.shimmerPrimary,
      shimmerSecondary: error ?? this.shimmerSecondary,
      shimmerSurface: error ?? this.shimmerSurface
    );
  }

  // Controls how the properties change on theme changes
  @override
  CustomColorScheme lerp(ThemeExtension<CustomColorScheme>? other, double t) {
    if (other is! CustomColorScheme) {
      return this;
    }
    return CustomColorScheme(
      primary: Color.lerp(primary, other.primary, t),
      primaryBackground:
          Color.lerp(primaryBackground, other.primaryBackground, t),
      primaryVariant: Color.lerp(primaryVariant, other.primaryVariant, t),
      primaryVariant2: Color.lerp(primaryVariant2, other.primaryVariant2, t),
      primaryVariant3: Color.lerp(primaryVariant3, other.primaryVariant3, t),
      background: Color.lerp(background, other.background, t),
      backgroundVariant:
          Color.lerp(backgroundVariant, other.backgroundVariant, t),
      backgroundVariant2:
          Color.lerp(backgroundVariant2, other.backgroundVariant2, t),
      surface: Color.lerp(surface, other.surface, t),
      divider: Color.lerp(divider, other.divider, t),
      text: Color.lerp(text, other.text, t),
      textDetail: Color.lerp(textDetail, other.textDetail, t),
      textCaption: Color.lerp(textCaption, other.textCaption, t),
      textSpecial: Color.lerp(textSpecial, other.textSpecial, t),
      textWhite: Color.lerp(textWhite, other.textWhite, t),
      textOrange: Color.lerp(textOrange, other.textOrange, t),
      textYellow: Color.lerp(textYellow, other.textYellow, t),
      textBlue: Color.lerp(textBlue, other.textBlue, t),
      textGreen: Color.lerp(textGreen, other.textGreen, t),
      textGreenVariant: Color.lerp(textGreenVariant, other.textGreenVariant, t),
      transparent: Color.lerp(transparent, other.transparent, t),
      success: Color.lerp(success, other.success, t),
      error: Color.lerp(error, other.error, t),
      shimmerPrimary: Color.lerp(shimmerPrimary, other.shimmerPrimary, t),
      shimmerSecondary: Color.lerp(shimmerSecondary, other.shimmerSecondary, t),
      shimmerSurface: Color.lerp(shimmerSurface, other.shimmerSurface, t),
    );
  }
}
