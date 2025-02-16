import 'package:ecommers_app/view/widget/auth_Widget/Sign_Up_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: Text(
          '18'.tr,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: const SignUpBody(),
    );
  }
}
