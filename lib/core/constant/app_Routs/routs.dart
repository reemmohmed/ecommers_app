import 'package:ecommers_app/Test/test.dart';
import 'package:ecommers_app/core/constant/app_Routs/name_routs.dart';
import 'package:ecommers_app/core/middleware/my_middle_war.dart';
import 'package:ecommers_app/view/screen/Auth/Sign_Up.dart';
import 'package:ecommers_app/view/screen/Auth/ForgetPasword/foreget_password.dart';
import 'package:ecommers_app/view/screen/Auth/cheek_email.dart';
import 'package:ecommers_app/view/screen/Auth/login.dart';
import 'package:ecommers_app/view/screen/Auth/ForgetPasword/reseet_Password.dart';
import 'package:ecommers_app/view/screen/Auth/succses_sign_Up.dart';
import 'package:ecommers_app/view/screen/Auth/ForgetPasword/sucses_reset_pasword.dart';
import 'package:ecommers_app/view/screen/Auth/ForgetPasword/viry_fiy_code.dart';
import 'package:ecommers_app/view/screen/Auth/veryfiy_code_signup.dart';
import 'package:ecommers_app/view/screen/On_bording/on_boarding.dart';
import 'package:ecommers_app/view/screen/language.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: "/", page: () => const Language(), middlewares: [
  //   // تتخطي الاجزاء الاولي لو فتح التطبيق ملرة تانية
  //   MyMiddleWar(),
  // ]),
  GetPage(name: '/', page: () => Test()),
  GetPage(name: NameRouts.logen, page: () => const Logen()),
  GetPage(name: NameRouts.signUp, page: () => const SignUp()),
  GetPage(name: NameRouts.forgetpasswored, page: () => const ForgetPassword()),
  GetPage(name: NameRouts.viryFiyCode, page: () => const ViryFiyCode()),
  GetPage(name: NameRouts.reseetPassword, page: () => const ReseetPassword()),
  GetPage(
      name: NameRouts.succesResetPasword,
      page: () => const SucsesResetPasword()),
  GetPage(name: NameRouts.succsesSignUp, page: () => const SuccsesSignUp()),
  GetPage(name: NameRouts.cheekEmail, page: () => const CheekEmail()),
  GetPage(
      name: NameRouts.veryfiycodesignup, page: () => const VeryfiyCodeSignup()),
  GetPage(name: NameRouts.onboarding, page: () => const OnBoarding()),
];
