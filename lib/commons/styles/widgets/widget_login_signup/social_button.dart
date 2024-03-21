import 'package:flutter/material.dart';
import 'package:parking_app/utils/constants/colors.dart';
import 'package:parking_app/utils/constants/image_strings.dart';
import 'package:parking_app/utils/constants/sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: PColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: PSizes.iconSm,
              height: PSizes.iconSm,
              image: AssetImage(PImages.google))
            ),
            
          ),
          const SizedBox(width: PSizes.spaceBtwItems,),
          Container(
          decoration: BoxDecoration(border: Border.all(color: PColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: Image(
              width: PSizes.iconSm,
              height: PSizes.iconSm,
              image: AssetImage(PImages.facebook))
            ),
            
          ),
      ],
    );
  }
}

