import 'package:ecommers_app/core/Text_Styel.dart/styel.dart';
import 'package:flutter/material.dart';

class CustomButtonAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color? color;
  const CustomButtonAuth({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 10),
        color: color ?? Colors.purple,
        onPressed: onPressed,
        child: Text(
          text,
          style: Styels.styel20,
        ),
      ),
    );
  }
}
