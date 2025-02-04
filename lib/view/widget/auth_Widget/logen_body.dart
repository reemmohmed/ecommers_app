import 'package:ecommers_app/controller/auth_Controller/login_controller.dart';
import 'package:ecommers_app/core/Text_Styel.dart/styel.dart';
import 'package:ecommers_app/core/constant/asset.dart';
import 'package:ecommers_app/core/function/vailedinput.dart';
import 'package:ecommers_app/view/widget/auth_Widget/Custom_text_auth.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_button_auth.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_body.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_form.dart';
import 'package:ecommers_app/view/widget/custom_hint_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogenBody extends StatelessWidget {
  const LogenBody({super.key});

  @override
  Widget build(BuildContext context) {
    LogenControllerImpl controller = Get.put(LogenControllerImpl());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Form(
        key: controller.formKey,
        child: ListView(
          children: [
            Image.asset(
              Asset.logo,
              height: 200,
            ),
            CustomHintText(
              text: '11'.tr,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextBody(
              text: '12'.tr,
            ),
            const SizedBox(
              height: 69,
            ),
            CustomTextForm(
                validator: (value) {
                  return validateInput(value!, 4, 10, 'email');
                },
                controller: controller.email,
                textlabel: 'Email',
                hintText: '13'.tr,
                icon: Icons.email_outlined),
            CustomTextForm(
                validator: (value) {
                  return validateInput(value!, 5, 9, 'password');
                },
                controller: controller.password,
                textlabel: '  Password',
                hintText: '14'.tr,
                icon: Icons.lock_clock_outlined),
            const SizedBox(
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                controller.goToForgetPassword();
              },
              child: Text(
                '15'.tr,
                textAlign: TextAlign.end,
                style: Styels.styel18
                    .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButtonAuth(
              text: '16'.tr,
              color: Colors.blue,
              onPressed: () {
                // علشان تشتغل لازم
                controller.logen();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextAuth(
              text: '18'.tr,
              onPressed: () {
                controller.gotoSignUp();
              },
              acountText: "17".tr,
            ),
          ],
        ),
      ),
    );
  }
}
