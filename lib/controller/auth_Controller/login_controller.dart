import 'dart:developer';

import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginControllers extends GetxController {
  logen();
  goToForgetPassword();
  gotoSignUp();
}

class LogenControllerImpl extends LoginControllers {
  late TextEditingController email;
  late TextEditingController password;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isShowPassword = true;
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  gotoSignUp() {
    Get.offNamed(NameRouts.signUp);
  }

  @override
  logen() {
    var formdata = formKey.currentState;
    if (formdata!.validate()) {
      log(' valed');
    } else {
      log('not  valed');
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.offNamed(NameRouts.forgetpasswored);
  }
}
