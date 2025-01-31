import 'package:flutter/material.dart';

class CustomTextBody extends StatelessWidget {
  final String text;
  const CustomTextBody({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16),
      textAlign: TextAlign.center,
    );
  }
}
