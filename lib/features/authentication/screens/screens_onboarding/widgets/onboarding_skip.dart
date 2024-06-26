import 'package:flutter/material.dart';
import 'package:parking_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: PDeviceUtils.getAppBarHeight(),
      right: PSizes.defaultSpace,
    child: TextButton(onPressed: () =>OnBoardingController.instance.skipPage(),
    child:  const Text("skip"),
    ),
    );
  }
}

