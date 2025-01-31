import 'package:ecommers_app/core/Text_Styel.dart/styel.dart';
import 'package:flutter/material.dart';

class CustomHintText extends StatelessWidget {
  final String text;
  const CustomHintText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Styels.texhedline
          .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}
