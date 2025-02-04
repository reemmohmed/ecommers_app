import 'package:ecommers_app/controller/auth_Controller/forget_password_controller.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_button_auth.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_body.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_text_form.dart';
import 'package:ecommers_app/view/widget/custom_hint_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetpasswordBody extends StatelessWidget {
  const ForgetpasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPaswordImple controller = Get.put(ForgetPaswordImple());
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: ListView(
        children: [
          const CustomHintText(
            text: ' Cheek Your Email',
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
              validator: (value) {},
              controller: controller.email,
              textlabel: 'Email',
              hintText: 'Enter Your Email',
              icon: Icons.email_outlined),
          CustomTextForm(
              validator: (value) {},
              controller: controller.phone,
              textlabel: 'phone',
              hintText: 'Enter Your phone Number',
              icon: Icons.phone_android_rounded),

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
              controller.goToViryfiycode();
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
