
import 'package:e_commerce_app/common/widgets/login_sigup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_sigup/social_button.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/inner_widgets/signup_form.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigUpScreen extends StatelessWidget {
  const SigUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Form
             const TSignUpForm(),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Divider
              TFomDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Social Buttons
              const TSocialButton(),

            ],
          ),
        ),
      ),
    );
  }
}


