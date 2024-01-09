import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/core/route/app_route.dart';
import 'package:tracking_app/view/widget/list_tile/custom_list_tile.dart';

class DayMonthScreen extends StatefulWidget {
  const DayMonthScreen({super.key});

  @override
  State<DayMonthScreen> createState() => _DayMonthScreenState();
}

class _DayMonthScreenState extends State<DayMonthScreen> {
  String? text;
  @override
  void initState() {
    super.initState();
    text = Get.arguments;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(text??"ALL"),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18,vertical: 10),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryColor),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryColor),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.primaryColor),
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: "Search hare",
                  suffixIcon: Icon(Icons.search,color: AppColors.primaryColor,),
                ),
              ),
            ),
            SizedBox(height: 24,),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 100,
              itemBuilder: (context, index){
                return GestureDetector(onTap: (){
                  Get.toNamed(AppRoute.detailsScreen);
                },child: CustomListTile());
              },
            ),
          ],
        ),
      ),
    );
  }
}
