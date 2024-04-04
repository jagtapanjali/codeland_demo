import 'dart:io';

import 'package:codeland_demo/constants/constants.dart';
import 'package:codeland_demo/features/uploadImage/upload_image_screen_controller.dart';
import 'package:file_picker/file_picker.dart';

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({super.key});

  @override
  UploadImageScreenState createState() => UploadImageScreenState();
}

class UploadImageScreenState extends State<UploadImageScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                    child: Text(
                  StringHelper.uploadImage,
                  style: AppTextStyle.textSubHeadlineSemiBold(
                      context, AppColorStyle.text(context)),
                )),
                Obx(() =>
                    UploadImageScreenController.shared.isImageView.value ==
                            false
                        ? Image.asset(
                            IconAssetsPNG.uploadImage,
                            width: 300.w,
                            height: 500.h,
                          )
                        : Image.file(
                      File(UploadImageScreenController.shared.imageFile.value.path ?? ""),
                      width: 300.w,
                      height: 500.h,
                      fit: BoxFit.fill,
                    ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    WidgetHelper.halfButtonWidget(
                        context: context,
                        buttonText: StringHelper.upload,
                        callBacked: () async {
                          UploadImageScreenController.shared.isImageView.value =
                              false;
                          if (await UploadImageScreenController.shared
                              .checkStoragePermission()) {
                            UploadImageScreenController.shared.pickImage();
                          } else {
                            Utility.showSnackBar(
                                StringHelper.allowStoragePermission);
                          }
                        },
                        color: AppColorStyle.primary(context),
                        width: 130.w,
                        height: 40.h),
                    WidgetHelper.halfButtonWidget(
                        context: context,
                        buttonText: StringHelper.view,
                        callBacked: () {
                          if (UploadImageScreenController
                                  .shared.imageFile.value.size >
                              0) {
                            UploadImageScreenController
                                .shared.isImageView.value = true;
                          }
                        },
                        color: Colors.grey,
                        width: 130.w,
                        height: 40.h,
                        buttonTextColor: AppColorStyle.text(context)),
                  ],
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                UploadImageScreenController.shared.imageFile.value =
                    PlatformFile(name: '', size: 0);
                UploadImageScreenController.shared.isImageView.value = false;
                RoutesPage.backWithResult('');
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColorStyle.text(context),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
