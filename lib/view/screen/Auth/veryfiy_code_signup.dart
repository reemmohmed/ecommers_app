import 'package:ecommers_app/view/widget/auth_Widget/viryfiycodesignupbody.dart';
import 'package:flutter/material.dart';

class VeryfiyCodeSignup extends StatelessWidget {
  const VeryfiyCodeSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('VeryFiyCode SignUp'),
      ),
      body: const ViryFiyCodeSignUpBody(),
    );
  }
}
