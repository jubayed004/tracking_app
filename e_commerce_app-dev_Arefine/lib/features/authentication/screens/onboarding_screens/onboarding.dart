import 'package:e_commerce_app/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding_screens/inner_widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding_screens/inner_widgets/onboarding_next_button.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding_screens/inner_widgets/onboarding_skip.dart';
import 'package:e_commerce_app/features/authentication/screens/onboarding_screens/inner_widgets/onborading_page.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Page
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                Title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                Title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                Title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
            ],
          ),

          ///Skip Button
          const OnboardingSkip(),

          ///Dot Navigation SmoothPageIndicator
          const OnboardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
