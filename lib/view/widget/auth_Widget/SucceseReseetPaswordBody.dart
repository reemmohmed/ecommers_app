import 'package:ecommers_app/controller/auth_Controller/sucsessresetpawsword_contoller.dart';
import 'package:ecommers_app/view/widget/auth_Widget/custom_button_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SucceseReseetPaswordBody extends StatelessWidget {
  const SucceseReseetPaswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    SucsessresetpawswordContollerImple controller =
        Get.put(SucsessresetpawswordContollerImple());
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
          const Text('Password Reset Successful! 🔑 '),
          const Text('You can now log in with your new password.'),
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
