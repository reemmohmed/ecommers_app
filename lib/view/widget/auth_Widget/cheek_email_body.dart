import 'package:ecommers_app/controller/auth_Controller/cheek_email_controller.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_button_auth.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_body.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_form.dart';
import 'package:ecommers_app/view/widget/custom_hint_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheekEmailBody extends StatelessWidget {
  const CheekEmailBody({super.key});

  @override
  Widget build(BuildContext context) {
    CheekEmailControllerImple controller = Get.put(CheekEmailControllerImple());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomHintText(
            text: 'Cheek Email ',
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
              controller: controller.email,
              textlabel: 'Email',
              hintText: 'Enter Your Email',
              icon: Icons.email_outlined),
          // CustomTextForm(
          //     controller: controller.phone,
          //     textlabel: 'phone',
          //     hintText: 'Enter Your phone Number',
          //     icon: Icons.phone_android_rounded),

          // GestureDetector(
          //   onTap: () {
          //     controller.goToforgetPassword();
          //   },
          //   child: Text(
          //     'Forget Password ?',
          //     textAlign: TextAlign.end,
          //     style: Styels.styel18
          //         .copyWith(color: Colors.red, fontWeight: FontWeight.bold),
          //   ),

          const SizedBox(
            height: 5,
          ),
          CustomButtonAuth(
            text: 'cheek ',
            color: Colors.blue,
            onPressed: () {
              controller.goToveryfiycodesignUp();
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
