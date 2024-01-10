import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:splash_screen/common/routers/routes_name.dart';

class SplashController extends GetxController {
  RxBool isSplash = true.obs;
  RxBool fadeOutText = false.obs;


  /// For IntroDuction View
  final box = GetStorage();
  bool get isIntroductionViewEnable => box.read('showIntro') ?? true;
  void changeStatusOfIntroView(bool val) {
    box.write('showIntro', val);
  }

  /// activating Splash View
  activatingSplashView(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Get.offAllNamed(RoutesName.homeScreen);
    });
  }

  /// activating fade Text on Splash view
  activatingFadeOutText() {
    Future.delayed(const Duration(milliseconds: 1800)).then((value) {
      fadeOutText.value = true;
    });
  }



}