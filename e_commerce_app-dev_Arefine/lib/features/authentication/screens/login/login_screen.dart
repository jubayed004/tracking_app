
import 'package:e_commerce_app/common/style/spacing_styles.dart';
import 'package:e_commerce_app/common/widgets/login_sigup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_sigup/social_button.dart';
import 'package:e_commerce_app/features/authentication/screens/login/inner_widgets/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login/inner_widgets/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Tittle & Sub-Tittle
             const TLoginHeader(),

              /// Form
             const TLoginForm(),

              ///Divider
              TFomDivider(dividerText: TTexts.orSignInWith.capitalize!,),

              const SizedBox(height: TSizes.spaceBtwSections),
              ///Footer
             const TSocialButton()
            ],
          ),
        ),
      ),
    );
  }
}








