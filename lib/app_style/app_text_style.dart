
import 'package:codeland_demo/constants/constants.dart';

class FontsHelper {

  static const String metropolisRegular = "MetropolisRegular";
  static const String metropolisMedium = "MetropolisMedium";
  static const String metropolisSemiBold = "MetropolisSemiBold";
  static const String metropolisBold = "MetropolisBold";
  static const String metropolisLight = "MetropolisLight";
  static const String metropolisItalic = "MetropolisItalic";

}

class AppTextStyle {

  /// ******  Headline  ******
  static textHeadlineLight(BuildContext context, Color color) {
    var fontSize = 28.0.sp;
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisLight,
        fontSize: fontSize);
  }

  static textHeadlineRegular(BuildContext context, Color color) {
    var fontSize = 28.0.sp;
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisRegular,
        fontSize: fontSize);
  }

  static textHeadlineMedium(BuildContext context, Color color) {
    var fontSize = 28.0.sp;
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisMedium,
        fontSize: fontSize);
  }

  static textHeadlineSemiBold(BuildContext context, Color color) {
    var fontSize = 28.0.sp;
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisSemiBold,
        fontSize: fontSize);
  }

  static textHeadlineBold(BuildContext context, Color color) {
    var fontSize = 28.0.sp;
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisBold,
        fontSize: fontSize);
  }

  static textHeadlineItalic(BuildContext context, Color color) {
    var fontSize = 28.0.sp;
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisItalic,
        fontSize: fontSize);
  }

  static textHeadlineWithFont(BuildContext context, Color color, String font) {
    var fontSize = 28.0.sp;
    return Theme.of(context).textTheme.headlineMedium!.copyWith(
        color: color,
        fontFamily: font,
        fontSize: fontSize);
  }

  /// ******  Headline  ******
  static textSubHeadlineLight(BuildContext context, Color color) {
    var fontSize = 22.0.sp;
    return Theme.of(context).textTheme.displaySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisLight,
        fontSize: fontSize);
  }

  static textSubHeadlineRegular(BuildContext context, Color color) {
    var fontSize = 22.0.sp;
    return Theme.of(context).textTheme.displaySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisRegular,
        fontSize: fontSize);
  }

  static textSubHeadlineMedium(BuildContext context, Color color) {
    var fontSize = 22.0.sp;
    return Theme.of(context).textTheme.displaySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisMedium,
        fontSize: fontSize);
  }

  static textSubHeadlineSemiBold(BuildContext context, Color color) {
    var fontSize = 22.0.sp;
    return Theme.of(context).textTheme.displaySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisSemiBold,
        fontSize: fontSize);
  }

  static textSubHeadlineBold(BuildContext context, Color color) {
    var fontSize = 22.0.sp;
    return Theme.of(context).textTheme.displaySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisBold,
        fontSize: fontSize);
  }

  static textSubHeadlineItalic(BuildContext context, Color color) {
    var fontSize = 22.0.sp;
    return Theme.of(context).textTheme.displaySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisItalic,
        fontSize: fontSize);
  }

  static textSubHeadlineWithFont(BuildContext context, Color color, String font) {
    var fontSize = 22.0.sp;
    return Theme.of(context).textTheme.displaySmall!.copyWith(
        color: color,
        fontFamily: font,
        fontSize: fontSize);
  }

  /// ******  Title  ******
  static textTitleLight(BuildContext context, Color color) {
    var fontSize = 18.0.sp;
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisLight,
        fontSize: fontSize);
  }

  static textTitleRegular(BuildContext context, Color color) {
    var fontSize = 18.0.sp;
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisRegular,
        fontSize: fontSize);
  }

  static textTitleMedium(BuildContext context, Color color) {
    var fontSize = 18.0.sp;
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisMedium,
        fontSize: fontSize);
  }

  static textTitleSemiBold(BuildContext context, Color color) {
    var fontSize = 18.0.sp;
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisSemiBold,
        fontSize: fontSize);
  }

  static textTitleBold(BuildContext context, Color color) {
    var fontSize = 18.0.sp;
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisBold,
        fontSize: fontSize);
  }

  static textTitleItalic(BuildContext context, Color color) {
    var fontSize = 18.0.sp;
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisItalic,
        fontSize: fontSize);
  }

  static textTitleWithFont(BuildContext context, Color color, String font) {
    var fontSize = 18.0.sp;
    return Theme.of(context).textTheme.headlineSmall!.copyWith(
        color: color,
        fontFamily: font,
        fontSize: fontSize);
  }

  /// ******  SubTitle  ******
  static textSubTitleLight(BuildContext context, Color color) {
    var fontSize = 16.0.sp;
    return Theme.of(context).textTheme.titleLarge!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisLight,
        fontSize: fontSize);
  }

  static textSubTitleRegular(BuildContext context, Color color) {
    var fontSize = 16.0.sp;
    return Theme.of(context).textTheme.titleLarge!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisRegular,
        fontSize: fontSize);
  }

  static textSubTitleMedium(BuildContext context, Color color) {
    var fontSize = 16.0.sp;
    return Theme.of(context).textTheme.titleLarge!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisMedium,
        fontSize: fontSize);
  }

  static textSubTitleSemiBold(BuildContext context, Color color) {
    var fontSize = 16.0.sp;
    return Theme.of(context).textTheme.titleLarge!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisSemiBold,
        fontSize: fontSize);
  }

  static textSubTitleBold(BuildContext context, Color color) {
    var fontSize = 16.0.sp;
    return Theme.of(context).textTheme.titleLarge!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisBold,
        fontSize: fontSize);
  }

  static textSubTitleItalic(BuildContext context, Color color) {
    var fontSize = 16.0.sp;
    return Theme.of(context).textTheme.titleLarge!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisItalic,
        fontSize: fontSize);
  }

  static textSubTitleWithFont(BuildContext context, Color color, String font) {
    var fontSize = 16.0.sp;
    return Theme.of(context).textTheme.titleLarge!.copyWith(
        color: color,
        fontFamily: font,
        fontSize: fontSize);
  }

  /// ******  Details  ******
  static textDetailsLight(BuildContext context, Color color) {
    var fontSize = 14.0.sp;
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisLight,
        fontSize: fontSize);
  }

  static textDetailsRegular(BuildContext context, Color color) {
    var fontSize = 14.0.sp;
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisRegular,
        fontSize: fontSize);
  }

  static textDetailsMedium(BuildContext context, Color color) {
    var fontSize = 14.0.sp;
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisMedium,
        fontSize: fontSize);
  }

  static textDetailsSemiBold(BuildContext context, Color color) {
    var fontSize = 14.0.sp;
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisSemiBold,
        fontSize: fontSize);
  }

  static textDetailsBold(BuildContext context, Color color) {
    var fontSize = 14.0.sp;
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisBold,
        fontSize: fontSize);
  }

  static textDetailsItalic(BuildContext context, Color color) {
    var fontSize = 14.0.sp;
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisItalic,
        fontSize: fontSize);
  }

  static textDetailsWithFont(BuildContext context, Color color, String font) {
    var fontSize = 14.0.sp;
    return Theme.of(context).textTheme.titleSmall!.copyWith(
        color: color,
        fontFamily: font,
        fontSize: fontSize);
  }

  /// ******  captions  ******
  static textCaptionLight(BuildContext context, Color color) {
    var fontSize = 12.0.sp;
    return Theme.of(context).textTheme.bodySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisLight,
        fontSize: fontSize);
  }

  static textCaptionRegular(BuildContext context, Color color) {
    var fontSize = 12.0.sp;
    return Theme.of(context).textTheme.bodySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisRegular,
        fontSize: fontSize);
  }

  static textCaptionMedium(BuildContext context, Color color) {
    var fontSize = 12.0.sp;
    return Theme.of(context).textTheme.bodySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisMedium,
        fontSize: fontSize);
  }

  static textCaptionMediumUnderLine(BuildContext context, Color color) {
    var fontSize = 12.0.sp;
    return Theme.of(context).textTheme.bodySmall!.copyWith(
        color: color,
        decoration: TextDecoration.underline,
        decorationColor: color,
        decorationThickness: 3,
        fontFamily: FontsHelper.metropolisMedium,
        fontSize: fontSize);
  }

  static textCaptionSemiBold(BuildContext context, Color color) {
    var fontSize = 12.0.sp;
    return Theme.of(context).textTheme.bodySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisSemiBold,
        fontSize: fontSize);
  }

  static textCaptionBold(BuildContext context, Color color) {
    var fontSize = 12.0.sp;
    return Theme.of(context).textTheme.bodySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisBold,
        fontSize: fontSize);
  }

  static textCaptionItalic(BuildContext context, Color color) {
    var fontSize = 12.0.sp;
    return Theme.of(context).textTheme.bodySmall!.copyWith(
        color: color,
        fontFamily: FontsHelper.metropolisItalic,
        fontSize: fontSize);
  }

  static textCaptionWithFont(BuildContext context, Color color, String font) {
    var fontSize = 12.0.sp;
    return Theme.of(context).textTheme.bodySmall!.copyWith(
        color: color,
        fontFamily: font,
        fontSize: fontSize);
  }

  /// ******  other  ******
  static double getResponsiveWidth(double value) {
    return value.w;
  }

  static double getResponsiveHeight(double value) {
    return value.h;
  }

  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

}
