import 'package:ecommers_app/controller/on_boarding_controller.dart';
import 'package:ecommers_app/view/widget/On_boardind/custom_buttom.dart';
import 'package:ecommers_app/view/widget/On_boardind/custom_page_view.dart';
import 'package:ecommers_app/view/widget/On_boardind/dot_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImplement());
    return const Column(
      children: [
        Expanded(
          flex: 3,
          child: CustomPageView(),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              DotConyrroler(),
              Spacer(
                flex: 1,
              ),
              CustomButtom(),
            ],
          ),
        )
      ],
    );
  }
}
