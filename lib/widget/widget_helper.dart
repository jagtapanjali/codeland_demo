import 'package:codeland_demo/constants/constants.dart';

class WidgetHelper {
  static Widget getInkWellWidget(
      {required Widget child, required Function onTap}) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      child: child,
      onTap: () {
        onTap();
      },
    );
  }

  static Widget fullButtonWidget({
    required BuildContext context,
    required String buttonText,
    double height = 50,
    double borderWidth = 1,
    double borderRadius = 5,
    Color color = ThemeConstant.primary,
    required VoidCallback callBacked,
  }) {
    return getInkWellWidget(
      onTap: () => {callBacked()},
      child: Container(
        height: AppTextStyle.getResponsiveHeight(height),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: AppTextStyle.textSubTitleMedium(
                context, AppColorStyle.textWhite(context)),
          ),
        ),
      ),
    );
  }

  static Widget halfButtonWidget({
    required BuildContext context,
    required String buttonText,
    Color buttonTextColor = ThemeConstant.textWhite,
    double height = 60,
    double borderWidth = 3,
    double borderRadius = 20,
    double width = 220,
    Color color = ThemeConstant.primary,
    required VoidCallback callBacked,
  }) {
    return getInkWellWidget(
      onTap: () => {callBacked()},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: AppTextStyle.textDetailsLight(
                context, buttonTextColor),
          ),
        ),
      ),
    );
  }

  static dataNotFoundWidget(BuildContext context,
      {required String? icon, required String message}) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon!,
            height: 160,
            width: 160,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            message,
            style: AppTextStyle.textTitleSemiBold(
                context, AppColorStyle.primary(context)),
          )
        ],
      ),
    );
  }

  static Widget cardImage(BuildContext context,String imgUrl,{
    double height = 130,
    double borderWidth = 5,
    double borderRadius = 15,
    double width = 160}){
    return Column(
      children: [
        Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: AppColorStyle.primaryBackground(context),
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              border: Border.all(color: AppColorStyle.primaryBackground(context).withOpacity(0.9),width: borderWidth),
              boxShadow: [BoxShadow(color: AppColorStyle.text(context).withOpacity(0.7),spreadRadius: 1,blurRadius: 10),],
              image: DecorationImage(image: AssetImage(imgUrl),fit: BoxFit.cover)
            ),),
      ],
    );
  }

}
