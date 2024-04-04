

import 'package:codeland_demo/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  GenericTextFieldController usernameController = GenericTextFieldController();
  GenericTextFieldController passwordController = GenericTextFieldController();
  var isEyeOpen = false.obs;
  TextEditingController passwordEditingController = TextEditingController();
  TextEditingController usernameEditingController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    usernameEditingController.clear();
    passwordEditingController.clear();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(IconAssetsPNG.codeLandLogo2,height: 270.h,width: 200.w,)),
             SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextFormFieldWidget(
                controller: usernameEditingController,
                textFieldController: usernameController,
                //hintText: StringHelper.username,
                keyboardKey: TextInputType.text,
                // validator: (value){
                //   return usernameController.error.value == "" ? null : "";
                // },
                labelText: StringHelper.username,
                onTextChanged: (text) {
                  usernameController.error.value =
                      Validators.validateName(text) ?? "";
                },
              ),
            ),
             SizedBox(height: 5.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Obx(
                    () => TextFormFieldWidget(
                  controller: passwordEditingController,
                  textFieldController: passwordController,
                  //hintText: StringHelper.password,
                  labelText: StringHelper.password,
                  isPassword: !isEyeOpen.value,
                  keyboardKey: TextInputType.text,
                      // validator: (value){
                      //   return passwordController.error.value == "" ? null : "";
                      // },
                  suffixIcon: WidgetHelper.getInkWellWidget(
                    onTap: () {
                      isEyeOpen.value = !isEyeOpen.value;
                    },
                    child: Padding(
                        padding: const EdgeInsets.only(right: 16, left: 16),
                        child: SvgPicture.asset(
                          isEyeOpen.value
                              ? IconAssetsSVG.eyeOpen
                              : IconAssetsSVG.eyeOff,
                          color: AppColorStyle.textDetail(context),
                        )),
                  ),
                  onTextChanged: (text) {
                    passwordController.error.value =
                        Validators.validatePassword(text) ?? "";
                  },
                ),
              ),
            ),
             SizedBox(height:10.h),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: WidgetHelper.fullButtonWidget(
                    context: context,
                    height: 60,
                    borderRadius: 20,
                    buttonText: StringHelper.login,
                    color: AppColorStyle.primary(context),
                    callBacked: () {
                      if (usernameEditingController.text != '' &&
                          passwordEditingController.text != '') {
                        RoutesPage.of()
                            .goTo(mode: RouteMode.push, moveTo: RouteName.uploadImagePage);
                      } else {
                        Utility.showSnackBar(
                            StringHelper.errorDefault);
                      }
                    }),
              ),
            ),
             SizedBox(height: 50.h),
           Padding(
             padding:
             const EdgeInsets.symmetric(horizontal: 30),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(StringHelper.assLoginDetails,style: AppTextStyle.textCaptionMedium(context, AppColorStyle.text(context)),),
                 const SizedBox(height: 2),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text(StringHelper.engKannTelu,style: AppTextStyle.textCaptionMedium(context, AppColorStyle.text(context)),),
                     InkWell(
                         onTap: (){
                           Utility.launchURL('tel://${StringHelper.engKannTeluNumber}');
                         },
                         child: Text(StringHelper.engKannTeluNumber,style: AppTextStyle.textCaptionMediumUnderLine(context, AppColorStyle.primary(context)),)),
                   ],
                 ),
                 const SizedBox(height: 2),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text(StringHelper.engKannHindi,style: AppTextStyle.textCaptionMedium(context, AppColorStyle.text(context)),),
                     InkWell(
                         onTap: (){
                           Utility.launchURL('tel://${StringHelper.engKannHindiNumber}');
                         },
                         child: Text(StringHelper.engKannHindiNumber,style: AppTextStyle.textCaptionMediumUnderLine(context, AppColorStyle.primary(context)),)),
                   ],
                 ),
               ],
             ),
           ),
             SizedBox(height: 70.h),
            Center(child: Text(StringHelper.versioninfo,style: AppTextStyle.textCaptionMedium(context, AppColorStyle.text(context)),)),
             SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
