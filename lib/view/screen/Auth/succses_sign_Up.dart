import 'package:ecommers_app/core/Text_Styel.dart/styel.dart';
import 'package:ecommers_app/view/widget/auth_Widget/SucceseSignUpBody.dart';
import 'package:flutter/material.dart';

class SuccsesSignUp extends StatelessWidget {
  const SuccsesSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text(
          'Sucsess',
          style: Styels.styel20,
        ),
      ),
      body: SucceseSignUpBody(),
    );
  }
}
