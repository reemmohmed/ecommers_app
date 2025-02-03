import 'package:ecommers_app/controller/auth_Controller/reset_password_controller.dart';
import 'package:ecommers_app/core/Text_Styel.dart/styel.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_button_auth.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPaswordBody extends StatelessWidget {
  const ResetPaswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPaswordImple controller = Get.put(ResetPaswordImple());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: ListView(
        children: [
          Text(
            'Reset Password',
            style: Styels.styel18.copyWith(),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'New Password',
              style: Styels.styel20.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Plase Enter New Password',
              style: Styels.styel18.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          CustomTextForm(
              controller: controller.paswored,
              textlabel: 'Password',
              hintText: 'Enter Your Password',
              icon: Icons.lock_clock_outlined),
          const SizedBox(
            height: 10,
          ),
          CustomTextForm(
              controller: controller.repaswored,
              textlabel: 'Password',
              hintText: 'Re Enter Your Password',
              icon: Icons.lock_clock_outlined),
          const SizedBox(
            height: 10,
          ),
          CustomButtonAuth(
            text: 'Save',
            color: Colors.blue,
            onPressed: () {
              controller.goToSuccessResetpPassword();
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
