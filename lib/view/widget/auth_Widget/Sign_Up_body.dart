import 'package:ecommers_app/controller/auth_Controller/sign_up_controller.dart';
import 'package:ecommers_app/core/function/vailedinput.dart';
import 'package:ecommers_app/view/widget/auth_Widget/Custom_text_auth.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_button_auth.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_body.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_form.dart';
import 'package:ecommers_app/view/widget/custom_hint_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImple controller = Get.put(SignUpControllerImple());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Form(
        key: controller.formKey,
        child: ListView(
          children: [
            CustomHintText(
              text: '11'.tr,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextBody(
              text: '25'.tr,
            ),
            const SizedBox(
              height: 69,
            ),
            CustomTextForm(
                validator: (value) {
                  return validateInput(value!, 6, 9, 'username');
                },
                controller: controller.userName,
                textlabel: '21'.tr,
                hintText: '21'.tr,
                icon: Icons.person_3_rounded),
            CustomTextForm(
                validator: (value) {
                  return validateInput(value!, 6, 9, 'email');
                },
                controller: controller.email,
                textlabel: '19'.tr,
                hintText: '19'.tr,
                icon: Icons.email_outlined),
            CustomTextForm(
                validator: (value) {
                  return validateInput(value!, 6, 9, 'phone');
                },
                controller: controller.phone,
                textlabel: '22'.tr,
                hintText: '23'.tr,
                icon: Icons.phone_android_rounded),
            CustomTextForm(
                validator: (value) {
                  return validateInput(value!, 6, 9, 'password');
                },
                controller: controller.paswored,
                textlabel: '20'.tr,
                hintText: '20'.tr,
                icon: Icons.lock_clock_outlined),
            // GestureDetector(
            //   onTap: () {
            //     controller.goToSignIn();
            //   },
            //   child: Text(
            //     'Forget Password ?',
            //     textAlign: TextAlign.end,
            //     style: Styels.styel18
            //         .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
            //   ),
            // ),

            const SizedBox(
              height: 5,
            ),
            CustomButtonAuth(
              text: 'Sign In',
              color: Colors.blue,
              onPressed: () {
                controller.signUp();
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextAuth(
              text: 'Sign Up',
              onPressed: () {
                controller.goToSignIn();
              },
              acountText: " Don't have an account ? ",
            ),
          ],
        ),
      ),
    );
  }
}
