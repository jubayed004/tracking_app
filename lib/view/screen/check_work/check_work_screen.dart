import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/constant/app_icons.dart';
import 'package:tracking_app/core/route/app_route.dart';

class CheckWorkScreen extends StatefulWidget {
  const CheckWorkScreen({super.key});

  @override
  State<CheckWorkScreen> createState() => _CheckWorkScreenState();
}

class _CheckWorkScreenState extends State<CheckWorkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Check Work"),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      body: Padding(
        padding:EdgeInsets.symmetric(vertical: 24,horizontal: 20),
        child: Column(
          children: [
            CustomTile(text: "TODAY", onTap: () {
              Get.toNamed(AppRoute.dayMonthScreen,arguments: "TODAY");
            },),
            CustomTile(text: "TOMORROW", onTap: () {
              Get.toNamed(AppRoute.dayMonthScreen,arguments: "TOMORROW");
            },),
            CustomTile(text: "LAST 7 DAYS", onTap: () {
              Get.toNamed(AppRoute.dayMonthScreen,arguments: "LAST 7 DAYS");
            },),
            CustomTile(text: "THIS MONTH", onTap: () {
              Get.toNamed(AppRoute.dayMonthScreen,arguments: "THIS MONTH");
            },),
            CustomTile(text: "ALL", onTap: () {
              Get.toNamed(AppRoute.dayMonthScreen,arguments: "ALL");
            },),
          ],
        ),
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  const CustomTile({
    super.key, required this.text, required this.onTap,
  });
 final String text;
 final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(9)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text(text,style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.w400,fontSize: 32),),
             Padding(
               padding: const EdgeInsets.only(right: 8.0),
               child: SvgPicture.asset(AppIcons.arrowRight,color: AppColors.whiteColor,width: 30),
             ),
            ],
          )
        ),
      ),
    );
  }
}
