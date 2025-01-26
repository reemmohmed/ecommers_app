import 'package:ecommers_app/data/sourse_data/Static/static.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            Static.onboardingList[index].title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 70,
          ),
          Image.asset(Static.onboardingList[index].image),
          const SizedBox(
            height: 70,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              Static.onboardingList[index].body,
              style: const TextStyle(color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
