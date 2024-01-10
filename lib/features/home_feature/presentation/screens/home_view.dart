import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_screen/features/home_feature/presentation/controller/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Center(
          child: Text(
            "Splash Screen Demo",
            style: theme.textTheme.displayLarge?.copyWith(
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
