import 'package:get/get.dart';
import 'package:tracking_app/view/screen/add_work/add_work_screen.dart';
import 'package:tracking_app/view/screen/attendance/attendance_screen.dart';
import 'package:tracking_app/view/screen/day/day_month_screen.dart';
import 'package:tracking_app/view/screen/details/details_screen.dart';
import 'package:tracking_app/view/screen/login/login_screen.dart';
import 'package:tracking_app/view/screen/check_work/check_work_screen.dart';
import 'package:tracking_app/view/screen/home/home_screen.dart';
import 'package:tracking_app/view/screen/profile/profile_screen.dart';
import 'package:tracking_app/view/screen/splash/splash_screen.dart';

class AppRoute{
  static const String splashScreen = "/splash_screen";
  static const String loginScreen = "/login_screen";
  static const String attendanceScreen = "/attendance_screen";
  static const String addWorkScreen = "/add_work_screen";
  static const String dayMonthScreen = "/day_month_screen";
  static const String detailsScreen = "/details_screen";
  static const String homeScreen = "/home_screen";
  static const String checkWorkScreen = "/check_work_screen";
  static const String profileScreen = "/profile_screen";

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: attendanceScreen, page: () => const AttendanceScreen()),
    GetPage(name: addWorkScreen, page: () => const AddWorkScreen()),
    GetPage(name: dayMonthScreen, page: () => const DayMonthScreen()),
    GetPage(name: detailsScreen, page: () => const DetailsScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: checkWorkScreen, page: () => const CheckWorkScreen()),
    GetPage(name: profileScreen, page: () => const ProfileScreen()),
  ];
}

