
import 'package:codeland_demo/constants/constants.dart';

class CustomAlertDialog extends StatelessWidget {
  final Color? bgColor;
  final String? title;
  final String message;
  final String? positiveBtnText;
  final String? negativeBtnText;
  final Function? onPositivePressed;
  final Function? onNegativePressed;
  final double? circularBorderRadius;
  final bool? isForcedDialog;

  const CustomAlertDialog({super.key,
    this.title,
    required this.message,
    this.circularBorderRadius = 10.0,
    this.bgColor = ThemeConstant.primaryBackgroundDark,
    this.positiveBtnText,
    this.negativeBtnText,
    this.onPositivePressed,
    this.onNegativePressed,
    this.isForcedDialog = false,
  })  : assert(bgColor != null),
        assert(circularBorderRadius != null);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return isForcedDialog == true ? false : true;
      },
      child: AlertDialog(
        title: title != null
            ? Text(title ?? '',
                style: AppTextStyle.textTitleSemiBold(
                    context, AppColorStyle.text(context)))
            : null,
        content: Text(message,
            style: AppTextStyle.textDetailsRegular(
                context, AppColorStyle.text(context))),
        backgroundColor: bgColor,
        scrollable: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(circularBorderRadius ?? 15)),
        actions: <Widget>[
          (negativeBtnText?.length ?? 0) > 0
              ? TextButton(
                  child: Text(negativeBtnText ?? '',
                      style: AppTextStyle.textSubTitleMedium(
                          context, AppColorStyle.text(context))),
                  onPressed: () {
                    Get.back();
                    if (onNegativePressed != null) {
                      onNegativePressed!();
                    }
                  },
                )
              : Container(),
          (positiveBtnText?.length ?? 0) > 0
              ? TextButton(
                  child: Text(positiveBtnText ?? '',
                      style: AppTextStyle.textSubTitleMedium(
                          context, AppColorStyle.text(context))),
                  onPressed: () {
                    Get.back();
                    if (onPositivePressed != null) {
                      onPositivePressed!();
                    }
                  },
                )
              : Container(),
        ],
      ),
    );
  }
}