import 'dart:io';

import 'package:codeland_demo/constants/constants.dart';

enum ApiHeader {
  deviceType,
  contentTypeJson,
  authorization,
  contentTypeFormData,
  contentTypeUrl,
}

class APIConstant {
  static RequestKeys requestKeys = const RequestKeys();
  static ResponseKeys responseKeys = const ResponseKeys();
  static ArgumentKeys argumentKeys = const ArgumentKeys();

  // API Base URL
  static String baseUrl = "";

  // Header method
  static getHeader(List<ApiHeader> headers) async {
    Map<String, String> data = {};

    for (var value in headers) {
      switch (value) {
        case ApiHeader.deviceType:
          data[requestKeys.deviceType] = ((Platform.isAndroid) ? "1" : "2");
          break;
        case ApiHeader.contentTypeJson:
          data[requestKeys.contentType] = "application/json";
          break;
        case ApiHeader.authorization:
          var token = await SharedPreferenceController.shared.getToken();
          data[requestKeys.authorization] = "bearer $token";
          break;
        case ApiHeader.contentTypeFormData:
          data[requestKeys.contentType] = "multipart/form-data";
          break;
        case ApiHeader.contentTypeUrl:
          data[requestKeys.contentType] = "application/x-www-form-urlencoded";
          break;
      }
    }
    return data;
  }
}

class RequestKeys {
  const RequestKeys();

  String get contentType => "Content-Type";

  String get deviceType => "device_type";

  String get authorization => "Authorization";
}

class ResponseKeys {
  const ResponseKeys();

  String get accessToken => "accessToken";
  String get applicationUrl => "applicationUrl";
}

class ArgumentKeys {
  const ArgumentKeys();

}
