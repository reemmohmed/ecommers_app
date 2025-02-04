import 'package:ecommers_app/controller/auth_Controller/sign_up_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImple(), fenix: true);
  }
}
