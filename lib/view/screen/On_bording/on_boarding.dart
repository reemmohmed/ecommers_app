import 'package:ecommers_app/view/widget/On_boardind/on_boarding_body.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: OnBoardingBody()),
    );
  }
}
