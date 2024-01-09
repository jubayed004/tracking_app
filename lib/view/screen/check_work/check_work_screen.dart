import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/constant/app_icons.dart';

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
        centerTitle: true,
        backgroundColor: Color(0xff28A8E0),
        leading: const Icon(Icons.arrow_back_ios,size: 40,color: Colors.white,),
        title: const Text("CHECK WORK",style: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 22,
          fontWeight: FontWeight.w400
        ),),
      ),
      body: Padding(
        padding:EdgeInsets.symmetric(vertical: 24,horizontal: 20),
        child: Column(
          children: [
            Custom_tile(text: "TODAY",),
            Custom_tile(text: "TOMORROW",),
            Custom_tile(text: "LAST 7 DAYS",),
            Custom_tile(text: "THIS MONTH",),
            Custom_tile(text: "ALL",),

          ],
        ),
      ),
    );
  }
}

class Custom_tile extends StatelessWidget {
  const Custom_tile({
    super.key, required this.text,
  });
 final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
