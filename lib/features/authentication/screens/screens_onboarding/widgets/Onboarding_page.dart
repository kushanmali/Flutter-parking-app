import 'package:flutter/material.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/helpers/helper_function.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key, required this.image, required this.title, required this.subtitle,
  });

  final String image,title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PSizes.defaultSpace),
      child: Column(
        children: [
          Image(
                width: PHelperFunctions.screenWidth() *0.8,
                height: PHelperFunctions.screenHeight()*0.6,
                image: AssetImage(image),
              ),
    
    
               Text(title,style: 
               Theme.of(context).textTheme.headlineMedium,
               textAlign: TextAlign.center,
               
               
               
               ),
    
               const SizedBox(height: PSizes.spaceBtwItems,),
    
                Text(subtitle,style: 
               Theme.of(context).textTheme.bodyMedium,
               textAlign: TextAlign.center,
               
               
               
               ),
        ],
      ),
    );
  }
}

