import 'package:get/get.dart';
import 'package:splash_screen/features/home_feature/presentation/controller/home_controller.dart';
import '../features/splash_feature/presentation/controller/splash_controller.dart';

class InitLocator implements Bindings {
  @override
  void dependencies() {

    /// Controllers
    Get.put<SplashController>(SplashController());
    Get.put<HomeController>(HomeController());
  }
}
