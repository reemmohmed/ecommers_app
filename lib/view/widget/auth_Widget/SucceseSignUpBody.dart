import 'package:ecommers_app/controller/auth_Controller/sucsess_signup_controller.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SucceseSignUpBody extends StatelessWidget {
  const SucceseSignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    SucsessSignupControllerImple controller =
        Get.put(SucsessSignupControllerImple());
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Center(
              child: const Icon(
                Icons.check_circle,
                size: 200,
                color: Colors.purple,
              ),
            ),
          ),
          const Text('Congratulations! 🎉  '),
          const Text('Your account has been successfully created. '),
          const Spacer(),
          Container(
            width: double.infinity,
            child: CustomButtonAuth(
                text: 'Go To Login',
                color: Colors.cyan,
                onPressed: () {
                  controller.goToLongin();
                }),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
