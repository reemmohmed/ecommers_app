import 'package:ecommers_app/core/Text_Styel.dart/styel.dart';
import 'package:ecommers_app/core/colors/my_colors.dart';
import 'package:ecommers_app/view/widget/auth_Widget/logen_body.dart';
import 'package:flutter/material.dart';

class Logen extends StatelessWidget {
  const Logen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Sign In ',
          style: Styels.texhedline.copyWith(fontWeight: FontWeight.bold),
        ),
        backgroundColor: MyColors.appbar,
        elevation: 0,
      ),
      body: const LogenBody(),
    );
  }
}
