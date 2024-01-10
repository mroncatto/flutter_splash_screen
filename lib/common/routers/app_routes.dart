// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../../features/home_feature/presentation/screens/home_view.dart';
import '../../features/splash_feature/presentation/screens/splash_view.dart';
import 'routes_name.dart';

class AppRoutes {
  AppRoutes._();

  static const String INITIAL = RoutesName.splashScreen;
  static const Transition transition = Transition.fadeIn;

  static final List<GetPage<dynamic>> routes = [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashView(),
      transition: transition,
    ),
   GetPage(
      name: RoutesName.homeScreen,
      page: () => const HomeView(),
      transition: transition,
    ),
  ];
}
