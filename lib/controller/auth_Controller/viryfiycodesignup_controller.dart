import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';

import 'package:get/get.dart';

abstract class ViryfiycodesignupController extends GetxController {
  cheekCode();
  gotToSucsessSinUp();
}

class ViryfiycodesignupControllerImpl extends ViryfiycodesignupController {
  late String verificationCode;

  @override
  gotToSucsessSinUp() {
    Get.toNamed(NameRouts.succsesSignUp);
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
