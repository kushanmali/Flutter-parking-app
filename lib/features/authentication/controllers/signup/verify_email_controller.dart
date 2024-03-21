import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:parking_app/commons/styles/widgets/sucess_screen/sucess_screen.dart';
import 'package:parking_app/data/repositories/authentication/authentication_repository.dart';
import 'package:parking_app/utils/constants/image_strings.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/popups/loader.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirected();
    super.onInit();
  }

  sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      PLoader.sucessSnackBar(
          title: "email send",
          message: 'please check your inbox and verify your email');
    } catch (e) {
      PLoader.errorSnackBar(title: 'oh snap', message: e.toString());
    }
  }

  //timer

  setTimerForAutoRedirected() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      await FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user?.emailVerified ?? false) {
        timer.cancel();
        Get.off(()=> SucessScreen(image: PImages.OnBoardingImage6, title: PText.verifyEmailTitle, subtitle: PText.confirmEmailSubTitle, onPressed: () => AuthenticationRepository.instance.screenRedirect(),),
        );
      }
    });
  }
   checkEmailVerificationStatus()async{
    final currentUser = FirebaseAuth.instance.currentUser;
    if(currentUser!=null && currentUser.emailVerified){
       Get.off(()=> SucessScreen(image: PImages.OnBoardingImage6, title: PText.verifyEmailTitle, subtitle: PText.confirmEmailSubTitle, onPressed: () => AuthenticationRepository.instance.screenRedirect(),),
        );

    }
  }
}
