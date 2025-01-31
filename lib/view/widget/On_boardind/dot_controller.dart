import 'package:ecommers_app/controller/onboarding/on_boarding_controller.dart';
import 'package:ecommers_app/data/sourse_data/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DotConyrroler extends StatelessWidget {
  const DotConyrroler({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImplement>(
        builder: (contoller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  Static.onboardingList.length,
                  (index) => AnimatedContainer(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(right: 5),
                    duration: const Duration(microseconds: 900),
                    width: contoller.currentpage == index ? 20 : 5,
                    height: 6,
                  ),
                ),
              ],
            ));
  }
}
