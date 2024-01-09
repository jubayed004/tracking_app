import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracking_app/constant/app_colors.dart';
import 'package:tracking_app/controller/add_work_controller.dart';
import 'package:tracking_app/core/route/app_route.dart';
import 'package:tracking_app/view/widget/button/custom_button.dart';
import 'package:tracking_app/view/widget/text_field/custom_text_field.dart';

class AddWorkScreen extends StatelessWidget {
  const AddWorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Add Work"),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      body: GetBuilder<AddWorkController>(
          init: AddWorkController(),
          builder: (controller) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 44,),
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
                          Text("Location Finding.....",maxLines: 3,),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12,),
                  CustomTextField(hintText: "COMPANY NAME", prefixIcon: Icons.person, controller: controller.nameController,),
                  const SizedBox(height: 12,),
                  CustomTextField(hintText: "PHONE NUMBER", prefixIcon: Icons.person, controller: controller.phoneController,keyboardType: TextInputType.number,),
                  const SizedBox(height: 12,),
                  CustomTextField(hintText: "Details", prefixIcon: Icons.info_outline, controller: controller.descController,maxLine: 10,minLine: 1,),
                  const SizedBox(height: 12,),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: (){
                          controller.openCamera();
                        },
                        child: DottedBorder(
                            padding: const EdgeInsets.all(0),
                            dashPattern: const [
                              12,
                              12,
                            ],
                            strokeWidth: 1,
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(12),
                            child: Container(
                              height: controller.imagePhotoFile != null? 400 : 120,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:AppColors.whiteColor.withOpacity(0.4),
                              ),
                              child: controller.imagePhotoFile != null?
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.file(
                                  controller.imagePhotoFile!,
                                  fit: BoxFit.contain,
                                ),
                              ):const Center(
                                  child: Icon(Icons.perm_media_outlined)
                              ),
                            )),
                      ),
                      controller.imagePhotoFile != null? Positioned(
                        top: 10,
                        right: 5,
                        child: IconButton(onPressed: (){
                          controller.removeImage();
                        },icon: const Icon(Icons.highlight_remove_outlined),color: Colors.red,iconSize: 35,),
                      ): const SizedBox(),
                    ],
                  ),
                  const SizedBox(height: 18,),
                  CustomButton(text: 'Add Work', onTap: () {
                    Get.toNamed(AppRoute.dayMonthScreen);
                  },),
                ],
              ),
            );
          }
      ),
    );
  }
}
