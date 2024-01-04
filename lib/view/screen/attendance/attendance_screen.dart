import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/controller/attendance_controller.dart';
import 'package:tracking_app/core/route/app_route.dart';
import 'package:tracking_app/view/widget/button/custom_button.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Attendance"),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      body: GetBuilder<AttendanceController>(
        init: AttendanceController(),
        builder: (controller) {
          return Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const Text("Please Wait Your Location Is Finding..."),
                  const SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 8.0,top: 18,bottom: 18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.primaryColor),
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Icon(Icons.location_on,color: AppColors.primaryColor,),
                          SizedBox(width: 5,),
                          Text("Finding.....",maxLines: 3,),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 18,),
                  CustomButton(text: 'Attendance', onTap: () {
                    Get.toNamed(AppRoute.addWorkScreen);
                  },),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
