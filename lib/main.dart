import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/view/screen/check_work/check_work_screen.dart';
import 'core/route/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.noTransition,
      transitionDuration: const Duration(milliseconds: 200),
      initialRoute: AppRoute.checkWorkScreen,
      navigatorKey: Get.key,
      getPages: AppRoute.routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        fontFamily: "PoppinsMedium",
        useMaterial3: true,
      ),
    );
  }
}
