import 'package:ecommers_app/core/constant/asset.dart';
import 'package:ecommers_app/data/models/on_bording_model.dart';
import 'package:get/get.dart';

abstract class Static {
  static List<OnbordingModel> onboardingList = [
    OnbordingModel(title: '2'.tr, image: Asset.onboardingOne, body: '3'.tr),
    OnbordingModel(title: '4'.tr, image: Asset.onboardingTwo, body: '5'.tr),
    OnbordingModel(
      title: '6'.tr,
      image: Asset.onboardingThree,
      body: '7'.tr,
    ),
    OnbordingModel(title: '8'.tr, image: Asset.onboardingFour, body: '9'.tr),
  ];
}
