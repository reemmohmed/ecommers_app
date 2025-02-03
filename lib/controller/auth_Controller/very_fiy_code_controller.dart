import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';

import 'package:get/get.dart';

abstract class VeryFiycationCodeController extends GetxController {
  cheekCode();
  goToReseetPasword();
}

class VeryFiycationCodeImpl extends VeryFiycationCodeController {
  late String verificationCode;

  @override
  goToReseetPasword() {
    Get.toNamed(NameRouts.reseetPassword);
  }

  @override
  cheekCode() {
    throw UnimplementedError();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
