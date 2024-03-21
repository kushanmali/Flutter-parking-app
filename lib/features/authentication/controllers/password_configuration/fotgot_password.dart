import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parking_app/features/authentication/controllers/password_configuration/reset_password.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(PText.forgetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
             const  SizedBox(
                height: PSizes.spaceBtwItems,
              ),
              Text(PText.forgetPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium),
             const  SizedBox(
                height: PSizes.spaceBtwSection *2,
              ),
        
              TextFormField(
                decoration: const InputDecoration(labelText: PText.email,prefixIcon: Icon(Iconsax.direct_right)),
              ),
        
             const  SizedBox(height: PSizes.spaceBtwSection,),
        
             //button
        
             SizedBox(width: double.infinity,
               child: ElevatedButton(
                onPressed: () => Get.to(() => const ResetPassword()),
               
               child: const Text(PText.submit)),
             )
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}
