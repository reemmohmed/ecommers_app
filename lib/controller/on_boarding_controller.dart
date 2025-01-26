import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:ecommers_app/core/constant/app_Routs/routs.dart';
import 'package:ecommers_app/data/sourse_data/Static/static.dart';
import 'package:ecommers_app/view/screen/Auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

abstract class OnBoardingController extends GetxController {
  nex();
  onPageChange(int index);
}

class OnboardingControllerImplement extends OnBoardingController {
  int currentpage = 0;
  late PageController pageController = PageController();

  @override
  nex() {
    if (currentpage < Static.onboardingList.length - 1) {
      Get.offAllNamed(NameRouts.logen);
    } else {
      currentpage++;
      pageController.animateToPage(currentpage,
          duration: const Duration(microseconds: 200), curve: Curves.easeInOut);
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
