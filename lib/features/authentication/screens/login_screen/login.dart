import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: unused_import
import 'package:iconsax/iconsax.dart';

import 'package:parking_app/commons/styles/spacing_styles.dart';
import 'package:parking_app/commons/styles/widgets/widget_login_signup/form_divider.dart';
import 'package:parking_app/features/authentication/screens/login_screen/widgets/loginform.dart';
import 'package:parking_app/features/authentication/screens/login_screen/widgets/loginheader.dart';
import 'package:parking_app/commons/styles/widgets/widget_login_signup/social_button.dart';



import 'package:parking_app/utils/constants/text_strings.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
        
         
        child: Padding(
          padding: PSpacingStyle.paddingWithAppBarHeight,

          child: Column(
            children: [
               const LoginHeader(),


                //form
           
           const LoginForm(),

           

          //devider

            FormDivider(dividerText: PText.orSignInWith.capitalize!),

          const SizedBox(height: 20,),

          

          //google and fb button

          const SocialButton()



            

            ],

          ),

        

          

          
            
          ), 
        ),

      );
      
    
  }
}

