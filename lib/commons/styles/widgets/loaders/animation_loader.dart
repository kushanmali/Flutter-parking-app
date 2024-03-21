  
  
  
  import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:parking_app/utils/constants/colors.dart';
import 'package:parking_app/utils/constants/sizes.dart';

class PAnimationLoaderWidth extends  StatelessWidget {



   const PAnimationLoaderWidth({
    
    
    super.key,
     required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
  
    
    });

    final String text;
    final String animation;
    final bool showAction;
    final String? actionText;
    final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(


      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,width: MediaQuery.of(context).size.width *0.8),
          const SizedBox(height: PSizes.defaultSpace,),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox( height: PSizes.defaultSpace,),
          showAction
          ?SizedBox(
            width: 250,
            child: OutlinedButton(
              onPressed: onActionPressed,
            style:OutlinedButton.styleFrom(backgroundColor: PColors.dark), 
            child: Text(
              actionText!,
              style: Theme.of(context).textTheme.bodyMedium!.apply(color: PColors.light),
            ),),
            
          )
          : const SizedBox(),
        ]
      ),
    );
  }
} 






  