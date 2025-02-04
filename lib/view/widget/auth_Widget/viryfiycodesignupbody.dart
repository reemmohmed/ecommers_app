import 'package:ecommers_app/controller/auth_Controller/viryfiycodesignup_controller.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class ViryFiyCodeSignUpBody extends StatelessWidget {
  const ViryFiyCodeSignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    ViryfiycodesignupControllerImpl controller =
        Get.put(ViryfiycodesignupControllerImpl());
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
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
              controller.gotToSucsessSinUp();
            }, // end onSubmit
          )
        ],
      ),
    );
  }
}
