class ApiResponseModel {
  String? message;
  dynamic data;
  bool? statusCode;

  ApiResponseModel(this.message, this.data, this.statusCode);

  ApiResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'];
    statusCode = json['status'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['data'] = data;
    map['status'] = statusCode;
    return data;
  }
}