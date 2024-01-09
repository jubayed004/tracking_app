import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/constant/app_icons.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(12),
          color: AppColors.whiteColor,
        ),
        child: ListTile(
          title: const Text("Company Name"),
          subtitle: const Text("03.40" " " " 20-Nov-2023"),
          trailing: SvgPicture.asset(AppIcons.arrowRight,height: 30,width: 30,),
        ),
      ),
    );
  }
}
