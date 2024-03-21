import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_app/features/authentication/controllers/signup/signup_controller.dart';
import 'package:parking_app/utils/constants/colors.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';

class CheckBoxRow extends StatelessWidget {
  const CheckBoxRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = SignUpController.instance;
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Obx(
            () => Checkbox(
                value: controller.privacyPolicy.value,
                onChanged: (value) => controller.privacyPolicy.value =
                    !controller.privacyPolicy.value),
          ),
        ),
        const SizedBox(
          height: PSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '${PText.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${PText.privacyPolicy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: PColors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: PColors.white,
                  )),
          TextSpan(
              text: '${PText.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: '${PText.termsOfUse}',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: PColors.white,
                    decoration: TextDecoration.underline,
                    decorationColor: PColors.white,
                  ))
        ]))
      ],
    );
  }
}
