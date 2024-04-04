
import 'package:codeland_demo/constants/constants.dart';

class Validators {

  static const String regEmail = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  static const String regPassword = r"^(?=.*\d)(?=.*[@#$%&*()_-])(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"; // 8-character length, 1-symbol, 1-uppercase, 1-digit
  static const String regName = r'^[a-zA-Z_]*$'; //r'^[a-z,A-Z, ]{3,25}$'
  static const String regFullName = r'^[a-zA-Z][a-zA-Z ]+[a-zA-Z]$';
  static const String regMobile = r'(^(\+\d{1,4}[- ]?)?\d{6,15}$)';

  static String? validateEmail(String? email) {
    bool isValid = RegExp(regEmail).hasMatch(email ?? "");
    if ((email ?? "").isEmpty) {
      return StringHelper.errorMsgEmptyEmail;
    } else if (isValid == false) {
      return StringHelper.errorMsgInvalidEmail;
    }
    return null;
  }

  static String? validatePassword(String? password) {
    bool isValid = RegExp(regPassword).hasMatch(password ?? "");
    if ((password ?? "").isEmpty) {
      return StringHelper.errorMsgEmptyPass;
    } else if ((password ?? "").length < 8) {
      return StringHelper.errorMsgMinLength;
    } else if (isValid == false) {
      return StringHelper.errorMsgInvalidPassword;
    }
    return null;
  }

  String? validateMobile(String? mobile) {
    bool isValid = RegExp(regMobile).hasMatch(mobile ?? "");
    if ((mobile ?? "").isEmpty) {
      return StringHelper.errorMsgEmptyMobile;
    } else if (isValid == false) {
      return StringHelper.errorMsgInvalidMobile;
    }
    return null;
  }

  static String? validateName(String? name) {
    bool isValid = RegExp(regName).hasMatch(name ?? "");
    if ((name ?? "").isEmpty) {
      return StringHelper.errorNameEmptyValue;
    } else if (isValid == false) {
      return StringHelper.errorNameValidValue;
    }
    return null;
  }

  String? validateFullName(String? fullName) {
    bool isValid = RegExp(regFullName).hasMatch(fullName ?? "");
    if ((fullName ?? "").isEmpty) {
      return StringHelper.errorFullNameEmptyValue;
    } else if (isValid == false) {
      return StringHelper.errorFullNameValidValue;
    }
    return null;
  }

}