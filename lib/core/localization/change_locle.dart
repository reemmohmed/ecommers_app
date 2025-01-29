import 'package:ecommers_app/Services/my_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocle extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();

  chaneLange(String langCode) {
    Locale locale = Locale(langCode);

    myServices.sharedPreferences.setString('lang', langCode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLange = myServices.sharedPreferences.getString('lang');
    if (sharedPrefLange == 'ar') {
      language = const Locale('ar');
    } else if (sharedPrefLange == 'en') {
      language = const Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
