import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheekEmailController extends GetxController {
  checkemail();
  goToveryfiycodesignUp();
}

class CheekEmailControllerImple extends CheekEmailController {
  late TextEditingController email;

  @override
  checkemail() {}

  @override
  goToveryfiycodesignUp() {
    Get.offNamed(NameRouts.veryfiycodesignup);
    // Get.offNamed(NameRouts.succsesSignUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
