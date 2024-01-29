import 'package:e_commerce_app/common/style/spacing_styles.dart';
import 'package:e_commerce_app/features/authentication/screens/login/login_screen.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title,  required this.onPressed,  required this.subtitle,});
 final String image,title, subtitle;
 final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight*2,
          child: Column(
            children: [
              ///image
              Image(image: AssetImage(image),width: THelperFunctions.screenHeight() * 0.6,),
              const SizedBox(height: TSizes.spaceBtwSections,),

              ///Title & SubTitle
              Text(title,style:Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwItems,),
              Text(subtitle,style:Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBtwSections,),
              ///Button
              SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed, child:const Text(TTexts.tContinue),),),
            ],
          ),
        ),
      ),
    );
  }
}
