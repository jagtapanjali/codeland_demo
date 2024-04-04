import 'package:codeland_demo/constants/constants.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {

  final bool? centerTitle;
  final bool hideBackButton;
  final String title;
  final String subTitle;
  final double? titleSpace;
  final Color? bgColor;
  final Color? backIconColor;
  final Color? titleColor;
  final Color? subTitleColor;
  final List<Widget>? actions;
  final Function? onTapBackAction;

  const AppBarWidget({
    super.key,
    this.centerTitle = false,
    this.hideBackButton = false,
    this.title = "",
    this.subTitle = "",
    this.titleSpace,
    this.bgColor,
    this.backIconColor,
    this.titleColor,
    this.subTitleColor,
    this.actions,
    this.onTapBackAction
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: titleSpace ?? 0,
      backgroundColor: bgColor ?? AppColorStyle.textWhite(context),
      elevation: 0,
      titleTextStyle: AppTextStyle.textSubHeadlineMedium(context, AppColorStyle.text(context)),
      automaticallyImplyLeading: !hideBackButton,
      leadingWidth: hideBackButton ? 0 : null,
      leading: hideBackButton
          ? null
          : WidgetHelper.getInkWellWidget(
              onTap: () {
                if (onTapBackAction != null) {
                  onTapBackAction!();
                } else {
                  Get.back();
                }
              },
              child: subTitle == ""
                  ? Center(
                child: SvgPicture.asset(
                  IconAssetsSVG.icBackArrow,
                  color: backIconColor ?? AppColorStyle.text(context),
                  height: 18,
                  width: 18,
                ),
              )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        SvgPicture.asset(
                          IconAssetsSVG.icBackArrow,
                          color: backIconColor ?? AppColorStyle.text(context),
                          height: 24,
                          width: 24,
                        )
                      ],
                    ),
            ),
      centerTitle: centerTitle ?? false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.textTitleBold(context, titleColor ?? AppColorStyle.text(context)),
          ),
          subTitle != ""
              ? Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
            subTitle,
            style: AppTextStyle.textCaptionRegular(context, subTitleColor ?? AppColorStyle.primaryVarient2(context)),
          ),
              )
              : Container(),
        ],
      ),
      actions: actions,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }

  @override
  Size get preferredSize {
    return const Size(double.infinity, kToolbarHeight);
  }
}
