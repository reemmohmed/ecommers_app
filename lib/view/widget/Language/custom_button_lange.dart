import 'package:flutter/material.dart';

class CustomButtonLange extends StatelessWidget {
  final String textButton;
  final void Function()? onPressed;
  const CustomButtonLange({
    super.key,
    required this.textButton,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: Colors.blue,
        onPressed: onPressed,
        child: Text(
          textButton,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
