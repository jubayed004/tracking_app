import 'package:flutter/material.dart';
import 'package:tracking_app/constant/app_colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false,
    required this.controller,
    this.keyboardType = TextInputType.streetAddress,
    this.maxLine = 1,
    this.minLine = 1,
  });
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int maxLine;
  final int minLine;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool visiblePassword = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        obscureText: widget.isPassword? visiblePassword : false,
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        maxLines: widget.maxLine,
        minLines: widget.minLine,
        validator: (value){
          if(value == null){
            return "Please enter Value";
          }else if (value.isEmpty){
            return "Please Enter Value";
          }else{
            return null;
          }
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              color: AppColors.primaryColor
            )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  color: AppColors.primaryColor
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                  color: AppColors.primaryColor
              )
          ),
          hintText: widget.hintText,
          prefixIcon: Icon(widget.prefixIcon,color: AppColors.primaryColor,),
          suffixIcon: widget.isPassword? GestureDetector(onTap: (){
            setState(() {
              visiblePassword = !visiblePassword;
            });
          },child: const Icon(Icons.remove_red_eye,color: AppColors.primaryColor,)): null,
        ),
      ),
    );
  }
}
