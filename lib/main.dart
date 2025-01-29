import 'package:ecommers_app/Services/my_services.dart';
import 'package:ecommers_app/core/constant/app_Routs/routs.dart';
import 'package:ecommers_app/core/localization/tranzilation.dart';
import 'package:ecommers_app/view/screen/language.dart';
import 'package:ecommers_app/view/screen/on_boarding.dart';
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
    return GetMaterialApp(
      translations: Tranzilation(),
      debugShowCheckedModeBanner: false,
      home: const Language(),
      routes: routes,
    );
  }
}
