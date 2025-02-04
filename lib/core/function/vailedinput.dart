import 'package:get/get.dart';

String? validateInput(String value, int min, int max, String type) {
  if (value.isEmpty) {
    return 'This field is required';
  }

  if (value.length < min) {
    return "Value can't be less than $min characters";
  }

  if (value.length > max) {
    return "Value can't be greater than $max characters";
  }

  if (type == 'username') {
    if (!GetUtils.isUsername(value)) {
      return 'Invalid username format';
    }
  } else if (type == 'email') {
    if (!GetUtils.isEmail(value)) {
      return 'Invalid email address';
    }
  } else if (type == 'phone') {
    if (!GetUtils.isPhoneNumber(value)) {
      return 'Invalid phone number';
    }
  } else if (type == 'password') {
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
  }

  return null; // إذا لم يكن هناك خطأ، لا ترجع شيئًا
}
