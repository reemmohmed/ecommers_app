import 'package:ecommers_app/view/widget/auth_Widget/cheek_email_body.dart';
import 'package:flutter/material.dart';

class CheekEmail extends StatelessWidget {
  const CheekEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('Sucsess SignUP'),
      ),
      body: CheekEmailBody(),
    );
  }
}
