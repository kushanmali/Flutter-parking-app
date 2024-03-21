import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parking_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: PSizes.defaultSpace,
      bottom: PDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () =>OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder()),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}