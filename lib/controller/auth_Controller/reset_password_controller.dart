import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goToSuccessResetpPassword();
}

class ResetPaswordImple extends ResetPasswordController {
  late TextEditingController paswored;
  late TextEditingController repaswored;
  @override
  goToSuccessResetpPassword() {
    Get.offNamed(NameRouts.viryFiyCode);
  }

  @override
  resetpassword() {
    // TODO: implement resetpassword
    throw UnimplementedError();
  }

  @override
  void onInit() {
    paswored = TextEditingController();
    repaswored = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    paswored.dispose();
    repaswored.dispose();
    super.dispose();
  }
}
