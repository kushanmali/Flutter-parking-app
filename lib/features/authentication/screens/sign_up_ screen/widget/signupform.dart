

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parking_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:parking_app/features/authentication/screens/sign_up_%20screen/widget/check_box.dart';

import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/validators/validation.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      PValidator.validateEmptyText("First name", value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: PText.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: PSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      PValidator.validateEmptyText("Last name", value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: PText.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          //username
          TextFormField(
            controller: controller.username,
            validator: (value) =>
                PValidator.validateEmptyText(" Username", value),
            decoration: const InputDecoration(
                labelText: PText.userNmae, prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          //email

          TextFormField(
            controller: controller.email,
            validator: (value) => PValidator.validateEmail(value),
            decoration: const InputDecoration(
                labelText: PText.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          //phone num

          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => PValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
                labelText: PText.phoneNumber, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: PSizes.spaceBtwInputFields,
          ),

          //pass

          Obx(
            ()=> TextFormField(
              controller: controller.password,
              validator: (value) => PValidator.validatePassword(value!),
              obscureText: controller.hidePassword.value,
              decoration:  InputDecoration(
                  labelText: PText.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value = !controller.hidePassword.value,
                    icon:   Icon(controller.hidePassword.value? Iconsax.eye_slash:Iconsax.eye),
                    ),),
            ),
          ),
          const SizedBox(
            height: PSizes.spaceBtwSection,
          ),

          

          const CheckBoxRow(),

          const SizedBox(
            height: PSizes.spaceBtwItems,
          ),
          //signup button

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: ()=> controller.signup(), child: const Text(PText.createAccount)),
          )

        
        ],
      ),
    );
  }
}
