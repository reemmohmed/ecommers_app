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
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  goToSignIn() {
    Get.offNamed(NameRouts.logen);
  }

  @override
  signUp() {
    var data = formKey.currentState;
    if (data!.validate()) {
      return 'success';
    } else {
      return 'failers';
    }
    // Get.offNamed(NameRouts.cheekEmail);
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
