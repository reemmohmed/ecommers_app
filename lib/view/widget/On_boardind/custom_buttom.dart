import 'package:ecommers_app/controller/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtom extends GetView<OnboardingControllerImplement> {
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
        onPressed: () {
          controller.nex();
        },
        child: const Text(
          'Containue',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
    );
  }
}
