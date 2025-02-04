import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:get/get.dart';

abstract class SucsessSignupController extends GetxController {
  goToLongin();
}

class SucsessSignupControllerImple extends SucsessSignupController {
  @override
  goToLongin() {
    Get.offNamed(NameRouts.logen);
  }
}
