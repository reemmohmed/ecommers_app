import 'package:ecommers_app/view/widget/auth_Widget/reset_pasword_body.dart';
import 'package:flutter/material.dart';

class ReseetPassword extends StatelessWidget {
  const ReseetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
      ),
      body: const ResetPaswordBody(),
    );
  }
}
