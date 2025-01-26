import 'package:ecommers_app/data/sourse_data/Static/static.dart';
import 'package:flutter/material.dart';

class DotConyrroler extends StatelessWidget {
  const DotConyrroler({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          Static.onboardingList.length,
          (index) => AnimatedContainer(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(5)),
            margin: const EdgeInsets.all(5),
            duration: const Duration(microseconds: 900),
            width: 7,
            height: 7,
          ),
        ),
      ],
    );
  }
}
