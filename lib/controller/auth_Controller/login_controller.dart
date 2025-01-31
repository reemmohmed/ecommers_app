import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginControllers extends GetxController {
  logen();
  gotoSignUp();
}

class LogenControllerImpl extends LoginControllers {
  late TextEditingController email;
  late TextEditingController password;

  @override
  gotoSignUp() {
    Get.toNamed(NameRouts.signUp);
  }

  @override
  logen() {
    throw UnimplementedError();
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
}
