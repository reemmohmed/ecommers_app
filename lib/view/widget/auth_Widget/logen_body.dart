import 'package:ecommers_app/controller/auth_Controller/login_controller.dart';
import 'package:ecommers_app/core/Text_Styel.dart/styel.dart';
import 'package:ecommers_app/core/constant/asset.dart';
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
      child: ListView(
        children: [
          Image.asset(
            Asset.logo,
            height: 200,
          ),
          const CustomHintText(
            text: 'Welcome Back',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextBody(
            text:
                'Signe In With Your Email And Password Or Continue With Social Media ',
          ),
          const SizedBox(
            height: 69,
          ),
          CustomTextForm(
              controller: controller.email,
              textlabel: 'Email',
              hintText: 'Enter Your Email',
              icon: Icons.email_outlined),
          CustomTextForm(
              controller: controller.password,
              textlabel: '  Password',
              hintText: 'Enter Your Password',
              icon: Icons.lock_clock_outlined),
          const SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              // controller.goToforgetPassword();
            },
            child: Text(
              'Forget Password ?',
              textAlign: TextAlign.end,
              style: Styels.styel18
                  .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButtonAuth(
            text: 'Sign In',
            color: Colors.blue,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextAuth(
            text: 'Sign Up',
            onPressed: () {
              controller.gotoSignUp();
            },
            acountText: " Don't have an account ? ",
          ),
        ],
      ),
    );
  }
}
