import 'package:flutter/material.dart';
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
    currentpage++;
    pageController.animateToPage(currentpage,
        duration: const Duration(microseconds: 200), curve: Curves.easeInOut);
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
