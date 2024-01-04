import 'package:get/get.dart';
import 'package:tracking_app/view/screen/add_work/add_work_screen.dart';
import 'package:tracking_app/view/screen/attendance/attendance_screen.dart';
import 'package:tracking_app/view/screen/login/login_screen.dart';
import 'package:tracking_app/view/screen/splash/splash_screen.dart';

class AppRoute{
  static const String splashScreen = "/splash_screen";
  static const String loginScreen = "/login_screen";
  static const String attendanceScreen = "/attendance_screen";
  static const String addWorkScreen = "/add_work_screen";

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: attendanceScreen, page: () => const AttendanceScreen()),
    GetPage(name: addWorkScreen, page: () => const AddWorkScreen()),
  ];
}

