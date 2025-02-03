import 'package:ecommers_app/core/Text_Styel.dart/styel.dart';
import 'package:ecommers_app/view/widget/auth_Widget/viry_fiy_code_body.dart';
import 'package:flutter/material.dart';

class ViryFiyCode extends StatelessWidget {
  const ViryFiyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Very Vication Code',
          style: Styels.styel20,
        ),
      ),
      body: const ViryFiyCodeBody(),
    );
  }
}
