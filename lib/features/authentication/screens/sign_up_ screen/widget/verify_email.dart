import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:parking_app/data/repositories/authentication/authentication_repository.dart';
import 'package:parking_app/features/authentication/controllers/signup/verify_email_controller.dart';

import 'package:parking_app/utils/constants/image_strings.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/helpers/helper_function.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key,this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(VerifyEmailController());
   
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => AuthenticationRepository.instance.logout(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(PImages.OnBoardingImage6),
                width: PHelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(
                height: PSizes.spaceBtwSection,
              ),

              //subtitle

              Text(
                PText.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              Text(
                email ?? '',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              Text(
                PText.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              //button

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>controller.checkEmailVerificationStatus(),
                  child: const Text("Continue"),
                ),
              ),

              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => controller.sendEmailVerification(),
                  child: const Text("Resend Email"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
