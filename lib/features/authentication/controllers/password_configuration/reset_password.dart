

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:parking_app/features/authentication/screens/login_screen/login.dart';
import 'package:parking_app/utils/constants/image_strings.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/helpers/helper_function.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: ()=> Get.to(()=> const LoginScreen() ), icon: const Icon(CupertinoIcons.clear))],
      ),

      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(PSizes.defaultSpace),
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
                PText.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              Text(
                PText.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(()=> const LoginScreen())
                    
                  ,
                  child: const Text(PText.done),
                ),
              ),

                const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
                 SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text(PText.reSendEmail),
                ),
              ),
          ],
        ),),
      ),
     
    );
  }
}