import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImple extends SignUpController {
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController paswored;

  @override
  goToSignIn() {
    Get.offNamed(NameRouts.logen);
  }

  @override
  signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    paswored = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    phone.dispose();
    paswored.dispose();
    super.dispose();
  }
}
