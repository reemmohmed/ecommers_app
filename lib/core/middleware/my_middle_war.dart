import 'package:ecommers_app/Services/my_services.dart';
import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleWar extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onboardng") == '1') {
      return const RouteSettings(name: NameRouts.logen);
    }
  }
}
