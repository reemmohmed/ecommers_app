import 'package:ecommers_app/controller/onboarding/on_boarding_controller.dart';
import 'package:ecommers_app/data/sourse_data/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPageView extends GetView<OnboardingControllerImplement> {
  const CustomPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChange(value);
      },

      itemCount: Static.onboardingList.length, // ✅ يحدد عدد العناصر بشكل صحيح

      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            Static.onboardingList[index].title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 70,
          ),
          AspectRatio(
              aspectRatio: 2,
              child: Image.asset(Static.onboardingList[index].image)),
          const SizedBox(
            height: 70,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              Static.onboardingList[index].body,
              style: const TextStyle(color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
