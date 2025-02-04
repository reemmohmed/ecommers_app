import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:get/get.dart';

abstract class SucsessresetpawswordContoller extends GetxController {
  goToLongin();
}

class SucsessresetpawswordContollerImple extends SucsessresetpawswordContoller {
  @override
  goToLongin() {
    Get.offNamed(NameRouts.logen);
  }
}
