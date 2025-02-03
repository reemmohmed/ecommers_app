import 'package:ecommers_app/controller/auth_Controller/very_fiy_code_controller.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class ViryFiyCodeBody extends StatelessWidget {
  const ViryFiyCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    VeryFiycationCodeImpl controller = Get.put(VeryFiycationCodeImpl());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const CustomTextBody(
            text: 'Plase Enter Yoir Code reem@gmail.com',
          ),
          OtpTextField(
            fieldWidth: 50,

            borderRadius: BorderRadius.circular(20),
            numberOfFields: 5,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              controller.goToReseetPasword();
            }, // end onSubmit
          )
        ],
      ),
    );
  }
}
