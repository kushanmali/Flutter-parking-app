

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_app/data/repositories/authentication/authentication_repository.dart';

import 'package:parking_app/data/repositories/user/user_model.dart';
import 'package:parking_app/data/repositories/user/user_repository.dart';
import 'package:parking_app/features/authentication/screens/sign_up_%20screen/widget/verify_email.dart';

import 'package:parking_app/utils/popups/loader.dart';
import 'package:parking_app/utils/constants/image_strings.dart';
import 'package:parking_app/utils/constants/network_manager.dart';
import 'package:parking_app/utils/popups/full_screen_loader.dart';


class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  //variables

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //signup

  void signup() async {
    try {
      PFullScreenLoader.openLoadingDialog(
          "we are processing your information...", PImages.OnBoardingImage6);

      //check internrt
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      //form validtion

      if (!signupFormKey.currentState!.validate()) return;

      //privacy poli

      if (!privacyPolicy.value) {
        PLoader.warningSnackBar(
            title: "Accept privacy policy", message: 'privacy policy read');

        return;
      }

     // REGister email pw auth firebase

      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      //save data in firestore

     
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(), 
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await  userRepository.saveUserRecord(newUser);

      //remove loader
          PFullScreenLoader.stopLoading();

      //show sucess message

      PLoader.sucessSnackBar(title: 'Congratulations',message: "your account created.verrify email");

      // move to verify screen
      Get.to(()=>  VerifyEmailScreen(email: email.text.trim(),));







    } catch (e) {

      // remove loader

    PFullScreenLoader.stopLoading();

    

      PLoader.errorSnackBar(title: "oh snap!", message: e.toString());
    } finally {
      PFullScreenLoader.stopLoading();
    }
  }
}
