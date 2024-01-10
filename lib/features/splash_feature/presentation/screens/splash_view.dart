import 'package:blobs/blobs.dart';
import 'package:fade_out_particle/fade_out_particle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common/helper/theme_helper.dart';
import '../../../../config/themes/app_theme.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  TextStyle splashTitle(Size size) => GoogleFonts.ubuntu(
    fontSize: size.height * 0.065,
    color: Colors.white,
  );
  TextStyle splashTitleSecond(Size size) => GoogleFonts.ubuntu(
      fontSize: size.height * 0.065,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    SplashController splashController = Get.find<SplashController>();
    splashController.activatingSplashView(context);
    splashController.activatingFadeOutText();

    ThemeHelper.changeThemeStatus(
        context: context,
        systemNavigationBarColor: AppColors.backGroundSplashColor,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarColor: AppColors.backGroundSplashColor,
        statusBarIconBrightness: Brightness.light);

    return Scaffold(
      backgroundColor: AppColors.backGroundSplashColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              child: Blob.random(
                size: 200,
                edgesCount: 5,
                minGrowth: 4,
                styles:
                BlobStyles(color: AppColors.secondComponentsSplashColor),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Blob.random(
                size: 300,
                edgesCount: 9,
                minGrowth: 3,
                styles:
                BlobStyles(color: AppColors.secondComponentsSplashColor),
              ),
            ),
            Positioned(
              left: -size.width * 0.2,
              top: size.height * 0.1,
              child: RotationTransition(
                turns: const AlwaysStoppedAnimation(45 / 360),
                child: Container(
                  width: size.width * 0.5,
                  height: size.height / 1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: AppColors.componentsSplashColor,
                  ),
                ),
              ),
            ),
            Obx(
                  () => FadeOutParticle(
                disappear: splashController.fadeOutText.value,
                duration: const Duration(milliseconds: 1500),
                child: RichText(
                  text: TextSpan(
                    text: "Splash",
                    style: splashTitle(size),
                    children: [
                      TextSpan(
                          text: "Screen",
                          style:
                          splashTitleSecond(size)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
