import 'package:ecommers_app/Services/my_services.dart';
import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:ecommers_app/data/sourse_data/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  nex();
  onPageChange(int index);
}

class OnboardingControllerImplement extends OnBoardingController {
  int currentpage = 0;
  late PageController pageController = PageController();
  MyServices myServices = Get.find();
  @override
  nex() {
    currentpage++;
    if (currentpage > Static.onboardingList.length - 1) {
      myServices.sharedPreferences.setString('onboardng', '1');
      Get.offAllNamed(NameRouts.logen);
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(microseconds: 100), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currentpage = index;
    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
