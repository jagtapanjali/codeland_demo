import 'dart:math';
import 'package:codeland_demo/app_style/theme/custom_theme_model.dart';
import 'package:flutter/material.dart';

class AppColorStyle {

  static primary(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.primary;
  }

  static primaryBackground(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.primaryBackground;
  }

  static primaryVarient(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.primaryVariant;
  }

  static primaryVarient2(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.primaryVariant2;
  }

  static primaryVariant3(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.primaryVariant3;
  }

  static background(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.background;
  }

  static backgroundVariant(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.backgroundVariant;
  }

  static backgroundVariant2(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.backgroundVariant2;
  }

  static surface(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.surface;
  }

  static divider(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.divider;
  }

  static text(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.text;
  }

  static textDetail(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.textDetail;
  }

  static textCaption(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.textCaption;
  }

  static textSpecial(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.textSpecial;
  }

  static textWhite(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.textWhite;
  }

  static textOrange(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.textOrange;
  }

  static textYellow(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.textYellow;
  }

  static textGreen(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.textGreen;
  }

  static textGreenVariant(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.textGreenVariant;
  }

  static textBlue(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.textBlue;
  }

  static transparent(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.transparent;
  }

  static success(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.success;
  }

  static error(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.error;
  }

  static Color getRandomColor() {
    final List<Color> colorCollection = [Colors.indigo, Colors.brown, Colors.blueGrey, Colors.deepPurple, Colors.teal];
    return colorCollection[Random().nextInt(5)];
  }

  static String getHexFromColorValue(Color colorValue) {
    return '#${colorValue.value.toRadixString(16).substring(2, 8)}';
  }

  static shimmerPrimary(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.shimmerPrimary;
  }

  static shimmerSecondary(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.shimmerSecondary;
  }

  static shimmerSurface(BuildContext context) {
    return Theme.of(context).extension<CustomColorScheme>()?.surface;
  }


}
