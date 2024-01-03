import 'package:get/get.dart';
import 'package:tracking_app/view/screen/splash/splash_screen.dart';

class AppRoute{
  static const String splashScreen = "/splash_screen";

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
  ];
}

