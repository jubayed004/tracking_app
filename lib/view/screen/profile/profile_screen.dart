import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tracking_app/constant/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Profile"),
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:const EdgeInsets.only(top: 24,bottom: 24),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16)
                    )
                ),
                child: Column(
                  children: [
                    Container(
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: CachedNetworkImage(
                          imageUrl: "https://img.freepik.com/free-photo/bohemian-man-with-his-arms-crossed_1368-3542.jpg",
                          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),
                    ),
                    const Text("Smith John",style: TextStyle(fontSize: 18,color: AppColors.whiteColor),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.only(bottom: 16),
                        decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(color: AppColors.primaryColor,width: 1))
                        ),
                        child:  Row(
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 10,),
                            Text("Mymensingh, Dhaka, Bangladesh")
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.only(bottom: 16),
                        decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(color: AppColors.primaryColor,width: 1))
                        ),
                        child:  Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(width: 10,),
                            Text("srabon.dev@gmail.com")
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.only(bottom: 16),
                        decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(color: AppColors.primaryColor,width: 1))
                        ),
                        child:  Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 10,),
                            Text("+880187545254")
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        padding: const EdgeInsets.only(bottom: 16),
                        decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(color: AppColors.primaryColor,width: 1))
                        ),
                        child:  Row(
                          children: [
                            Icon(Icons.login_outlined),
                            SizedBox(width: 10,),
                            Text("Log Out")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
