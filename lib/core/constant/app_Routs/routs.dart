import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:ecommers_app/view/screen/Auth/Sign_Up.dart';
import 'package:ecommers_app/view/screen/Auth/ForgetPasword/foreget_password.dart';
import 'package:ecommers_app/view/screen/Auth/login.dart';
import 'package:ecommers_app/view/screen/Auth/ForgetPasword/reseet_Password.dart';
import 'package:ecommers_app/view/screen/Auth/succses_sign_Up.dart';
import 'package:ecommers_app/view/screen/Auth/ForgetPasword/sucses_reset_pasword.dart';
import 'package:ecommers_app/view/screen/Auth/ForgetPasword/viry_fiy_code.dart';
import 'package:ecommers_app/view/screen/On_bording/on_boarding.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  //Auth
  NameRouts.logen: (context) => const Logen(),
  NameRouts.signUp: (context) => const SignUp(),
  NameRouts.forgetpasswored: (context) => const ForgetPassword(),
  NameRouts.viryFiyCode: (context) => const ViryFiyCode(),
  NameRouts.reseetPassword: (context) => const ReseetPassword(),
  NameRouts.succesResetPasword: (context) => const SucsesResetPasword(),
  NameRouts.succsesSignUp: (context) => const SuccsesSignUp(),

// Onbording
  NameRouts.onboarding: (context) => const OnBoarding(),
};
