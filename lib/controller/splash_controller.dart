import 'dart:async';

import 'package:get/get.dart';
import 'package:tracking_app/core/route/app_route.dart';

class SplashController extends GetxController{



  void navigation(){
    Timer(const Duration(seconds: 2), () {
      Get.offAndToNamed(AppRoute.homeScreen);
    });
  }

  @override
  void onInit() {
    navigation();
    super.onInit();
  }
}