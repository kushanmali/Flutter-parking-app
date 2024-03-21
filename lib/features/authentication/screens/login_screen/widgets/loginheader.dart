import 'package:flutter/material.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
     
     crossAxisAlignment: CrossAxisAlignment.center,
     mainAxisAlignment: MainAxisAlignment.center,
     children: [
        
         Text(PText.loginTitle,
         style: Theme.of(context).textTheme.headlineMedium,),
         const SizedBox(height: PSizes.sm,),
         Text(PText.loginSubTitle,
         style: Theme.of(context).textTheme.bodyMedium,),
     ],
              );
  }
}