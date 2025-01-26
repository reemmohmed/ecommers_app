import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
        color: Colors.green,
        onPressed: () {},
        child: const Text(
          'Containue',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
