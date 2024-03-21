// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:parking_app/commons/styles/widgets/widget_login_signup/form_divider.dart';
import 'package:parking_app/commons/styles/widgets/widget_login_signup/social_button.dart';
import 'package:parking_app/features/authentication/screens/sign_up_%20screen/widget/signupform.dart';

import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(PSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              Text(
                PText.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: PSizes.spaceBtwSection,
              ),

              const SignUpForm(),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
              //divider

              FormDivider(
                dividerText: PText.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: PSizes.spaceBtwItems,
              ),
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
