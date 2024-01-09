import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/constant/app_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: SvgPicture.asset(AppIcons.logoText,
              color: AppColors.primaryColor, height: 60),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.cyan,
          size: 40,
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
