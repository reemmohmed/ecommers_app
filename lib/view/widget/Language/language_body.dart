import 'package:ecommers_app/view/widget/Language/custom_button_lange.dart';
import 'package:flutter/material.dart';

class LanguageBody extends StatelessWidget {
  const LanguageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Choose Your Language',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButtonLange(
            textButton: 'ar',
            onPressed: () {},
          ),
          CustomButtonLange(
            textButton: 'en',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
