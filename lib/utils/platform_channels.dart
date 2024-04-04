import 'package:codeland_demo/constants/constants.dart';

class PlatformChannels {

  static MethodNames methodNames = const MethodNames();

  static const platformChannelName = 'flutter.native/helper';
  static const platform = MethodChannel(platformChannelName);

  static Future<void> lunchUrl(String? url) async {
    try {
      await platform.invokeMethod(MethodNames.lunchUrl, url);
    } on PlatformException catch (e) {
      printLog("error ${e.message}");
    }
  }
}

class MethodNames {
  const MethodNames();

  static const lunchUrl = "lunchUrl";
}