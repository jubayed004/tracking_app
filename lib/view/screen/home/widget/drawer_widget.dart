import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tracking_app/constant/app_colors.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height/15,
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CircleAvatar(
                  child: CachedNetworkImage(
                    imageUrl: "https://img.freepik.com/free-photo/bohemian-man-with-his-arms-crossed_1368-3542.jpg",
                    placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
                ),
              ),
              title: Text("Smith John",style: TextStyle(color: AppColors.whiteColor,),),
              subtitle: Text("+880175482456",style: TextStyle(color: AppColors.whiteColor,),),
              trailing: GestureDetector(
                onTap: (){
                  Get.back();
                },
                child: Icon(
                  Icons.cancel_outlined,
                  size: 34,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            Divider(
              thickness: 5,
              color: AppColors.whiteColor,
            ),
            SizedBox(
              height: 44,
            ),
            Row(
              children: [
                Icon(Icons.security,size: 35,color: AppColors.whiteColor,),
                SizedBox(width: 12,),
                Text("Terms of Service",style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 18
                ),)
              ],
            ),
            Divider(),
            Row(
              children: [
                Icon(Icons.privacy_tip,size: 35,color: AppColors.whiteColor,),
                SizedBox(width: 12,),
                Text("Privacy Policy",style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 18
                ),)
              ],
            ),
            Divider(),
            Row(
              children: [
                Icon(Icons.info,size: 35,color: AppColors.whiteColor,),
                SizedBox(width: 12,),
                Text("About Us",style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 18
                ),)
              ],
            ),
            Divider(),
            Row(
              children: [
                Icon(Icons.login_outlined,size: 35,color: AppColors.whiteColor,),
                SizedBox(width: 12,),
                Text("Log Out",style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 18
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
