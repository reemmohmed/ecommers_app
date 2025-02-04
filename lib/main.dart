import 'package:ecommers_app/Services/my_services.dart';
import 'package:ecommers_app/core/constant/app_Routs/routs.dart';
import 'package:ecommers_app/core/localization/change_locle.dart';
import 'package:ecommers_app/core/localization/tranzilation.dart';
import 'package:ecommers_app/my_binding.dart';
import 'package:ecommers_app/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await intialServse();
  runApp(const EcommerseApp());
}

class EcommerseApp extends StatelessWidget {
  const EcommerseApp({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeLocle controller = Get.put(ChangeLocle());
    return GetMaterialApp(
      initialBinding: MyBinding(),
      theme: controller.appthem,
      locale: controller.language,
      translations: Tranzilation(),
      debugShowCheckedModeBanner: false,
      home:
          // const Test(),
          const Language(),
      routes: routes,
    );
  }
}
