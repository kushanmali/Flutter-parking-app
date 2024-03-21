import 'package:flutter/material.dart';
import 'package:parking_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:parking_app/utils/constants/colors.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller =OnBoardingController.instance;

    return Positioned(
     bottom: PDeviceUtils.getBottomNavigationBarHeight() +25,
     left: PSizes.defaultSpace,
     
     child: SmoothPageIndicator(controller: controller.pageController, 
     onDotClicked: controller.dotNavigationClick,

     count: 3,
     effect: const ExpandingDotsEffect(activeDotColor: PColors.dark,dotHeight: 6),
     ),
     );
  }
}