import 'package:get/get.dart';
import 'package:tracking_app/view/screen/home/home_screen.dart';
import 'package:tracking_app/view/screen/splash/splash_screen.dart';

class AppRoute{
  static const String splashScreen = "/splash_screen";
  static const String homeScreen = "/home_screen";

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
  ];
}

