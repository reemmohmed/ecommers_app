import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MyServices> inital() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

intialServse() async {
  await Get.putAsync(() => MyServices().inital());
}
