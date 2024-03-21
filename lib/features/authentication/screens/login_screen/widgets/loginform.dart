import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:parking_app/features/authentication/controllers/password_configuration/fotgot_password.dart';
import 'package:parking_app/features/authentication/screens/sign_up_%20screen/sign_up.dart';
import 'package:parking_app/utils/constants/sizes.dart';
import 'package:parking_app/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: PSizes.spaceBtwSection),
      child: Column(
       children: [
         //email
    
    
         TextFormField(
           decoration:const InputDecoration(
             prefixIcon: Icon(Iconsax.direct_right),
             labelText: PText.email) ,
         ),
         const  SizedBox(height: PSizes.spaceBtwInputFields),
    
         //password
         const TextField(
         decoration: InputDecoration(
             prefixIcon: Icon(Iconsax.password_check),
             labelText: PText.password,suffixIcon: Icon(Iconsax.eye_slash)) ,),
    
              const  SizedBox(height: PSizes.spaceBtwInputFields /2),
    
              //remember me & forget
    
              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Row(
                   children: [
                     Checkbox(value: true, onChanged: (value){}),
                     const Text(PText.rememberMe)
                   ],
                 ),
    
                 //forget password
                 TextButton(onPressed: ()=> Get.to(()=> const ForgetPassword())
                   
                 , child: const Text(PText.forgetPassword))
    
    
    
    
               ],
              ),
    
              const SizedBox(height: PSizes.spaceBtwItems,),
    
              //sign in button
    
              SizedBox(
               width: double.infinity,
                child: ElevatedButton(onPressed: () {
                  
                }, child: const Text(PText.signIN)),
              ),

              const SizedBox(height: PSizes.spaceBtwItems,),

              //CREATE account
    
                SizedBox(
               width: double.infinity,
                child: OutlinedButton(onPressed: () => Get.to(()=> const SignupScreen())
                  
                , child: const Text(PText.createAccount)),
              ),
    
            
    
    
       ],
    
              ),
        ),
          );
  }
}

