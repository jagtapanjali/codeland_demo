
import 'package:codeland_demo/constants/constants.dart';

class CustomProgressDialog extends StatelessWidget {
  const CustomProgressDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppTextStyle.getResponsiveHeight(60),
      height: AppTextStyle.getResponsiveHeight(60),
      decoration: BoxDecoration(
          color: AppColorStyle.primaryBackground(context),
          borderRadius: const BorderRadius.all(
              Radius.circular(2))),
      child: Center(
        child: SizedBox(
          width: AppTextStyle.getResponsiveHeight(30),
          height: AppTextStyle.getResponsiveHeight(30),
          child:
          //RiveAnimation.asset(RiveAssets.rive_loading_animation),
          CircularProgressIndicator(
            strokeWidth: 3,
            valueColor: AlwaysStoppedAnimation<Color>(AppColorStyle.primary(context)),
          ),
        ),
      ),
    );
  }
}
