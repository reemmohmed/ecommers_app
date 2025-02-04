import 'package:ecommers_app/Services/my_services.dart';
import 'package:ecommers_app/core/constant/AppThem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeLocle extends GetxController {
  Locale? language;

  MyServices myServices = Get.find();
  ThemeData appthem = themeEnglish;
  chaneLange(String langCode) {
    Locale locale = Locale(langCode);

    myServices.sharedPreferences.setString('lang', langCode);
    appthem = langCode == 'ar' ? themeArabic : themeEnglish;
    Get.changeTheme(appthem);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLange = myServices.sharedPreferences.getString('lang');
    if (sharedPrefLange == 'ar') {
      language = const Locale('ar');
      appthem = themeArabic;
    } else if (sharedPrefLange == 'en') {
      language = const Locale('en');
      appthem = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appthem = themeEnglish;
    }
    super.onInit();
  }
}
