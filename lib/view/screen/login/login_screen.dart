import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/constant/app_icons.dart';
import 'package:tracking_app/controller/auth_controller.dart';
import 'package:tracking_app/core/route/app_route.dart';
import 'package:tracking_app/view/widget/button/custom_button.dart';
import 'package:tracking_app/view/widget/text_field/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: GetBuilder<AuthController>(
        init: AuthController(),
          builder: (controller) {
            return Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                physics: const BouncingScrollPhysics(),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 150,
                        child: SvgPicture.asset(AppIcons.logo),
                      ),
                      const SizedBox(height: 18,),
                      CustomTextField(hintText: "User Name", prefixIcon: Icons.person, controller: controller.userNameController,),
                      CustomTextField(hintText: "Password", prefixIcon: Icons.lock, controller: controller.passwordController,isPassword: true,),
                      const SizedBox(height: 18,),
                      CustomButton(text: 'Login', onTap: () {
                        if(formKey.currentState!.validate()){
                          Get.toNamed(AppRoute.attendanceScreen);
                        }
                      },),
                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
