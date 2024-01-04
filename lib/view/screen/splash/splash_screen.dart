import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/constant/app_icons.dart';
import 'package:tracking_app/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Center(
            child: SizedBox(
              height: 200,
              width: 150,
              child: SvgPicture.asset(AppIcons.logo,color: AppColors.whiteColor.withOpacity(0.8),),
            ),
          );
        }
      ),
    );
  }
}
