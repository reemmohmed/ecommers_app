import 'package:ecommers_app/controller/auth_Controller/sign_up_controller.dart';
import 'package:ecommers_app/core/Text_Styel.dart/styel.dart';
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
      child: ListView(
        children: [
          const CustomHintText(
            text: 'Welcome Back',
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextBody(
            text:
                'Signe Up With Your Email And Password Or Continue With Social Media ',
          ),
          const SizedBox(
            height: 69,
          ),
          CustomTextForm(
              controller: controller.userName,
              textlabel: 'User Name',
              hintText: 'Enter Your Name',
              icon: Icons.person_3_rounded),
          CustomTextForm(
              controller: controller.email,
              textlabel: 'Email',
              hintText: 'Enter Your Email',
              icon: Icons.email_outlined),
          CustomTextForm(
              controller: controller.phone,
              textlabel: 'phone',
              hintText: 'Enter Your phone Number',
              icon: Icons.phone_android_rounded),
          CustomTextForm(
              controller: controller.paswored,
              textlabel: '  Password',
              hintText: 'Enter Your Password',
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
            onPressed: () {},
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
    );
  }
}
