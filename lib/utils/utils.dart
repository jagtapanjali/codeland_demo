import 'dart:io';
import 'package:codeland_demo/constants/constants.dart';

void printLog(Object? object) {
  if (kDebugMode) {
    print(object);
  }
}

class Utility {
  static final Utility shared = Utility._internal();

  Utility._internal();

  factory Utility() {
    return shared;
  }

  static bool isLoading() {
    return Get.isDialogOpen as bool;
  }

  static showLoadingView() {
    if (Utility.isLoading() == false) {
      if (Get.isSnackbarOpen == true) {
        Get.back();
        Future.delayed(const Duration(milliseconds: 500), () {
          progressDialog();
        });
      } else {
        progressDialog();
      }
    }
  }

  static progressDialog() {
    Get.dialog(const Center(child: CustomProgressDialog()),
        barrierDismissible: true, barrierColor: Colors.black38);
  }

  static hideLoadingView() {
    if ((Get.isDialogOpen as bool) == true) {
      Get.back();
    }
  }

  static hideLoadingViewAfterSomeInterval() {
    Future.delayed(const Duration(seconds: 2), () {
      if ((Get.isDialogOpen as bool) == true || Get.isSnackbarOpen == true) {
        Get.back();
      }
    });
  }

  static showSnackBar(String message,
      {Color color = ThemeConstant.backgroundDark, int? durationInSecond}) {
    final snackBar = GetSnackBar(
      message: message,
      duration: Duration(seconds: durationInSecond ?? 3),
      borderRadius: 10,
      backgroundColor: color,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
    );
    if (Get.isSnackbarOpen == true) {
      Get.back();
      Get.showSnackbar(snackBar);
    } else {
      Get.showSnackbar(snackBar);
    }
  }

  static dismissSnackbar() {
    if (Get.isSnackbarOpen == true) {
      Get.back();
    }
  }

  static imageCache(String url, {BoxFit? boxFit, Alignment? alignment}) {
    return CachedNetworkImage(
        imageUrl: url,
        fit: boxFit ?? BoxFit.fill,
        alignment: alignment ?? Alignment.center,
        placeholder: (context, error) => const Icon(
              Icons.photo_album_sharp,
              color: Colors.blueGrey,
            ),
        errorWidget: (context, url, error) => const Icon(
              Icons.photo_album_sharp,
              color: Colors.blueGrey,
            ));
  }

  static localImage(String url, {BoxFit? boxFit, Alignment? alignment}) {
    return Image.file(
      File(url),
      alignment: alignment ?? Alignment.center,
      fit: boxFit ?? BoxFit.fill,
    );
  }

  String getInitials({String str = "", int limitTo = 2}) {
    if (str != "") {
      var buffer = StringBuffer();
      var split = str.split(' ');
      var limit = (split.length == 1) ? 1 : (limitTo);
      for (var i = 0; i < limit; i++) {
        buffer.write(split[i][0].toUpperCase());
      }
      return buffer.toString();
    } else {
      return "";
    }
  }

  static launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  static showNoInternetWithFunction({required Function function}) {
    if (NetworkManager.shared.isInternetConnected) {
      function();
    } else {
      showSnackBar(StringHelper.noInternetConnection);
    }
  }

}
