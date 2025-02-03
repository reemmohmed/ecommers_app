import 'package:ecommers_app/core/constant/asset.dart';
import 'package:ecommers_app/data/models/on_bording_model.dart';
import 'package:ecommers_app/view/screen/On_bording/on_boarding.dart';

abstract class Static {
  static List<OnbordingModel> onboardingList = [
    OnbordingModel(
      title: 'Shoose Product',
      image: Asset.onboardingOne,
      body:
          'Discover a world of convenience and endless choices\n  Get ready to experience the best of online shopping right\n at your fingertips ',
    ),
    OnbordingModel(
      title: 'Eyse Safe& Payment',
      image: Asset.onboardingTwo,
      body:
          'Discover a world of convenience and endless choices \n Get ready to experience the best of online shopping right \nat your fingertips ',
    ),
    OnbordingModel(
        title: 'Track Your Order',
        image: Asset.onboardingThree,
        body:
            'Discover a world of convenience and endless choices \n Get ready to experience the best of online shopping right \nat your fingertips '),
    OnbordingModel(
        title: ' Fast Delivery',
        image: Asset.onboardingFour,
        body:
            'Discover a world of convenience and endless choices \n Get ready to experience the best of online shopping right \nat your fingertips '),
  ];
}
