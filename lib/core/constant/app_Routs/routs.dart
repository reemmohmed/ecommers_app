import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:ecommers_app/view/screen/Auth/Sign_Up.dart';
import 'package:ecommers_app/view/screen/Auth/foreget_password.dart';
import 'package:ecommers_app/view/screen/Auth/login.dart';
import 'package:ecommers_app/view/screen/on_boarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  NameRouts.logen: (context) => const Logen(),
  NameRouts.signUp: (context) => const SignUp(),
  NameRouts.forgetpasswored: (context) => const ForgetPassword(),
// Onbording
  NameRouts.onboarding: (context) => const OnBoarding(),
};
