import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/constant/app_icons.dart';
import 'package:tracking_app/core/route/app_route.dart';
import 'package:tracking_app/view/screen/home/widget/drawer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Center(
          child: SvgPicture.asset(AppIcons.logoText,
              color: AppColors.primaryColor, height: 60),
        ),
        leading: GestureDetector(
          onTap: (){
            try{
              scaffoldKey.currentState?.openDrawer();
            }catch(error){
              print(error);
            }
          },
          child: const Icon(
            Icons.menu,
            color: Colors.cyan,
            size: 40,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const SizedBox(height: 56,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: AppColors.primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        AppIcons.group,
                        height: 20,
                      ),
                      const Text(
                        "TRACKING",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteColor),
                      ),
                      SvgPicture.asset(
                        AppIcons.group,
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 48,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.attendanceScreen);
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.primaryColor),
                          child: SvgPicture.asset(
                            AppIcons.attan,
                            color: AppColors.whiteColor,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 24,),
                       const Text("ATTENDANCE",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.addWorkScreen);
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.primaryColor),
                          child: SvgPicture.asset(
                            AppIcons.at,
                            color: AppColors.whiteColor,
                            fit: BoxFit.cover,
                          ),
                        ),
                       const SizedBox(height: 24,),
                        const Text("ADD WORK",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),)
                      ],
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 48,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.checkWorkScreen);
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.primaryColor),
                          child: SvgPicture.asset(
                            AppIcons.att,
                            color: AppColors.whiteColor,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 24,),
                        const Text("CHECK WORK",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20)),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.profileScreen);
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: AppColors.primaryColor),
                          child: SvgPicture.asset(
                            AppIcons.atta,
                            color: AppColors.whiteColor,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 24,),
                        const Text("PROFILE",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
