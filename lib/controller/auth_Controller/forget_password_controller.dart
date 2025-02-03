import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  cheekemail();

  goToViryfiycode();
}

class ForgetPaswordImple extends ForgetPasswordController {
  late TextEditingController email;
  late TextEditingController phone;

  @override
  cheekemail() {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  void onInit() {
    email = TextEditingController();
    phone = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    phone.dispose();

    super.dispose();
  }

  @override
  goToViryfiycode() {
    Get.offNamed(NameRouts.viryFiyCode);
  }
}
