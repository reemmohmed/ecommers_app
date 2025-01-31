import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:ecommers_app/core/localization/change_locle.dart';
import 'package:ecommers_app/view/widget/Language/custom_button_lange.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageBody extends GetView<ChangeLocle> {
  const LanguageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '1'.tr,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButtonLange(
            textButton: 'ar',
            onPressed: () {
              controller.chaneLange('ar');
              Get.toNamed(NameRouts.onboarding);
            },
          ),
          CustomButtonLange(
            textButton: 'en',
            onPressed: () {
              controller.chaneLange('en');
              Get.toNamed(NameRouts.onboarding);
            },
          ),
        ],
      ),
    );
  }
}
