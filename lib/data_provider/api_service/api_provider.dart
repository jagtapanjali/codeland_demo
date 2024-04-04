import 'dart:io';
import 'package:codeland_demo/constants/constants.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:dio/dio.dart';

final ApiServices apiServices = ApiServices();

class ApiServices {

  Future<ApiResponseModel> getMethod<T>(String url,
      {Map<String, String>? headers,
        String? contentType,
        Map<String, dynamic>? query,
        decoder}) async {
    debugPrint("-------------------\n---------------------------API--------------------------------\n------------------");
    debugPrint("Headers: $headers");
    debugPrint("URL: $url");
    if (NetworkManager.shared.isInternetConnected) {
      Dio.Dio dio = Dio.Dio();
      try {
        Dio.Response response = await dio.get(url,
            options: Dio.Options(
                method: 'GET',
                responseType: Dio.ResponseType.json,
                headers: headers));
        debugPrint("Response: ${response.data}");
        debugPrint("-------------------\n---------------------------API--------------------------------\n------------------");
        if (response.statusCode == 200) {
          ApiResponseModel object = ApiResponseModel.fromJson(response.data);
          object.statusCode = true;
          return object;
        } else {
          Map<String, dynamic> errorData = response.data;
          return ApiResponseModel(errorData["Message"], null,false);
        }
      } on DioException catch (exception) {
        if (exception is SocketException) {
          return ApiResponseModel(StringHelper.somethingWentWrong, null,false);
        } else if (exception is TimeoutException) {
          return ApiResponseModel(StringHelper.errorTimeOut, null,false);
        } else {
          if (exception.response?.data != null) {
            Map<String, dynamic> errorData = exception.response?.data;
            return ApiResponseModel(errorData["message"], errorData["data"], false);
          } else {
            return ApiResponseModel(exception.message, null,false);
          }
        }
      }
    } else {
      return ApiResponseModel(StringHelper.noInternetConnection, null, false);
    }
  }

  Future<ApiResponseModel> postMethod<T>(String url, body,
      {String? contentType,
        Map<String, String>? headers,
        Map<String, dynamic>? query,
        decoder,
        uploadProgress}) async {
    debugPrint("-------------------\n---------------------------API--------------------------------\n------------------");
    debugPrint("url: $url");
    debugPrint("Headers: $headers");
    debugPrint("Request: $body");
    if (NetworkManager.shared.isInternetConnected) {
      Dio.Dio dio = Dio.Dio();
      try {
        var params;
        params = body;
        //debugPrint("param: $params");
        Dio.Response response = await dio.post(url,
            data: params,
            options: Dio.Options(
                method: 'POST',
                responseType: Dio.ResponseType.json,
                headers: headers));
        debugPrint("Response: ${response.data}");
        debugPrint("-------------------\n---------------------------API--------------------------------\n------------------");
        if (response.statusCode == 200) {
          ApiResponseModel object = ApiResponseModel.fromJson(response.data);
          object.statusCode = true;
          return object;
        } else {
          Map<String, dynamic> errorData = response.data;
          return ApiResponseModel(errorData["Message"], null, false);
        }
      } on DioException catch (exception) {
        if (exception is SocketException) {
          return ApiResponseModel(StringHelper.somethingWentWrong, null, false);
        } else if (exception.type == DioExceptionType.connectionTimeout) {
          return ApiResponseModel(StringHelper.errorTimeOut, null, false);
        } else {
          if (exception.response?.data != null) {
            Map<String, dynamic> errorData = exception.response?.data;
            return ApiResponseModel(errorData["message"], errorData["data"], false);
          } else {
            return ApiResponseModel(exception.message, null, false);
          }
        }
      }
    } else {
      Utility.hideLoadingView();
      return ApiResponseModel(StringHelper.noInternetConnection, null, false);
    }
  }

  Future<ApiResponseModel> putMethod<T>(String url, body,
      {String? contentType,
        Map<String, String>? headers,
        Map<String, dynamic>? query,
        decoder,
        uploadProgress}) async {
    debugPrint("-------------------\n---------------------------API--------------------------------\n------------------");
    debugPrint("url: $url");
    debugPrint("Headers: $headers");
    debugPrint("Request: $body");
    if (NetworkManager.shared.isInternetConnected) {
      Dio.Dio dio = Dio.Dio();
      try {
        var params;
        params = body;
        //debugPrint("param: $params");
        Dio.Response response = await dio.post(url,
            data: params,
            options: Dio.Options(
                method: 'POST',
                responseType: Dio.ResponseType.json,
                headers: headers));
        debugPrint("Response: ${response.data}");
        debugPrint("-------------------\n---------------------------API--------------------------------\n------------------");
        if (response.statusCode == 200) {
          ApiResponseModel object = ApiResponseModel.fromJson(response.data);
          object.statusCode = true;
          return object;
        } else {
          Map<String, dynamic> errorData = response.data;
          return ApiResponseModel(errorData["Message"], null, false);
        }
      } on DioException catch (exception) {
        if (exception is SocketException) {
          return ApiResponseModel(StringHelper.somethingWentWrong, null, false);
        } else if (exception.type == DioExceptionType.connectionTimeout) {
          return ApiResponseModel(StringHelper.errorTimeOut, null, false);
        } else {
          if (exception.response?.data != null) {
            Map<String, dynamic> errorData = exception.response?.data;
            return ApiResponseModel(errorData["message"], errorData["data"], false);
          } else {
            return ApiResponseModel(exception.message, null, false);
          }
        }
      }
    } else {
      Utility.hideLoadingView();
      return ApiResponseModel(StringHelper.noInternetConnection, null, false);
    }
  }

  Future<ApiResponseModel> postMultipartMethod<T>(String url, body,
      {String? contentType,
        Map<String, String>? headers,
        Map<String, dynamic>? query,
        decoder,
        uploadProgress}) async {
    debugPrint("-------------------\n---------------------------API--------------------------------\n------------------");
    debugPrint("url: $url");
    debugPrint("Headers: $headers");
    debugPrint("Request: $body");
    var formData = Dio.FormData.fromMap(body);

    if (NetworkManager.shared.isInternetConnected) {
      Dio.Dio dio = Dio.Dio();
      try {
        Dio.Response response = await dio.post(url,
            data: formData,
            options: Dio.Options(
                method: 'POST',
                responseType: Dio.ResponseType.json,
                headers: headers));
        debugPrint("Response: ${response.data}");
        debugPrint("-------------------\n---------------------------API--------------------------------\n------------------");
        if (response.statusCode == 200) {
          debugPrint("status code ${response.statusCode}");
          return ApiResponseModel.fromJson(response.data);
        } else {
          debugPrint("status code ${response.statusCode}");
          Map<String, dynamic> errorData = response.data;
          return ApiResponseModel(errorData["Message"], null, false);
        }
      } on DioException catch (exception) {
        if (exception is SocketException) {
          return ApiResponseModel(StringHelper.somethingWentWrong, null, false);
        } else if (exception is TimeoutException) {
          return ApiResponseModel(StringHelper.errorTimeOut, null, false);
        } else {
          if (exception.response?.data != null) {
            Map<String, dynamic> errorData = exception.response?.data;
            return ApiResponseModel(errorData["message"], errorData["data"], false);
          } else {
            return ApiResponseModel(exception.message, null, false);
          }
        }
      }
    } else {
      return ApiResponseModel(StringHelper.noInternetConnection, null, false);
    }
  }

}