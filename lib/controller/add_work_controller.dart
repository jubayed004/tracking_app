import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddWorkController extends GetxController{
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  File? imagePhotoFile;

  void openCamera() async{
    try{
      final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
      if(pickedFile != null){
        imagePhotoFile = File(pickedFile.path);
        update();
      }
    }catch(error){
      Fluttertoast.showToast(msg: "Image Pick Error");
    }
  }

  void removeImage() async{
    try{
      imagePhotoFile = null;
      update();
      Fluttertoast.showToast(msg: "Remove Image Successful");
    }catch(error){
      Fluttertoast.showToast(msg: "Remove Image Error");
    }
  }
}