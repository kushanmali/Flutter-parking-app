// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parking_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:parking_app/features/authentication/screens/screens_onboarding/widgets/OnBoardingNextButton.dart';
import 'package:parking_app/features/authentication/screens/screens_onboarding/widgets/Onboarding_page.dart';
import 'package:parking_app/features/authentication/screens/screens_onboarding/widgets/onBoadingDotNavigation.dart';
import 'package:parking_app/features/authentication/screens/screens_onboarding/widgets/onboarding_skip.dart';
import 'package:parking_app/utils/constants/colors.dart';
import 'package:parking_app/utils/constants/image_strings.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/device/device_utility.dart';
import 'package:parking_app/utils/helpers/helper_function.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(OnBoardingController());

    return  Scaffold(

      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
               OnboardingPage(
                image: PImages.OnBoardingImage7,
                title: PText.onBoadingTitle3,
                subtitle: PText.onBoadingSubTitle3,
              ),
              OnboardingPage(
                image: PImages.OnBoardingImage9,
                title: PText.onBoadingTitle1,
                subtitle: PText.onBoadingSubTitle2,
              ),
               OnboardingPage(
                image: PImages.OnBoardingImage8,
                title: PText.onBoadingTitle2,
                subtitle: PText.onBoadingSubTitle1,
              ),
              

            ],
          ),

          // skip button
          
          const OnBoardingSkip(),

          //dot navigation

        const OnBoardingDotNavigation(),

        //circullar button

        const OnBoardingNextButton()
        
        




        ],
      ),






    );
  }
}





