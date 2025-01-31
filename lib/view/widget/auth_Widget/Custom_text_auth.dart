import 'package:ecommers_app/core/Text_Styel.dart/styel.dart';
import 'package:flutter/material.dart';

class CustomTextAuth extends StatelessWidget {
  final String text;
  final String acountText;
  final void Function()? onPressed;
  const CustomTextAuth({
    super.key,
    required this.text,
    this.onPressed,
    required this.acountText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          acountText,
          style: Styels.styel18,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: Colors.pink),
          ),
        ),
      ],
    );
  }
}
