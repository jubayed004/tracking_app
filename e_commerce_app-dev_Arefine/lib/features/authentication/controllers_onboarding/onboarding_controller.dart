import 'package:e_commerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  /// Variable
 final pageController = PageController();
 Rx<int>currentPageIndex = 0.obs;


  /// Update Current index when page Scroll
  void updatePageIndicator (index)=> currentPageIndex.value = index;

  ///Jump to the specific dot selected page
  void dotNavigationClick (index){
   currentPageIndex.value = index;
   pageController.jumpTo(index);
  }

  /// Update Current Index & Jump to Next page

  void nextPage (){
   if(currentPageIndex.value == 2){
    Get.offAll(const LoginScreen());
   }else{
    int page = currentPageIndex.value + 1;
    pageController.jumpToPage(page);
   }
  }

  ///Update Current Index & Jump to the last Page
  void skipPage(){
   currentPageIndex.value = 2;
   pageController.jumpToPage(2);
  }











}