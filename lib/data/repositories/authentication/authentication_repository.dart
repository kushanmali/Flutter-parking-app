import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:parking_app/commons/styles/widgets/sucess_screen/sucess_screen.dart';
import 'package:parking_app/features/authentication/screens/login_screen/login.dart';
import 'package:parking_app/features/authentication/screens/screens_onboarding/onboarding.dart';
import 'package:parking_app/features/authentication/screens/sign_up_%20screen/widget/verify_email.dart';
import 'package:parking_app/features/authentication/screens/text/text.dart';
import 'package:parking_app/utils/constants/image_strings.dart';
import 'package:parking_app/utils/constants/text_strings.dart';
import 'package:parking_app/utils/exceptions/firebase_auth_exception.dart';
import 'package:parking_app/utils/exceptions/firebase_exception.dart';
import 'package:parking_app/utils/exceptions/format_exception.dart';
import 'package:parking_app/utils/exceptions/platform_exception.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  // called from main.dart

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  // @override
  // void onInit(){

  screenRedirect() async {
   final user = _auth.currentUser;
    if (user !=null){
      if(user.emailVerified){
        Get.offAll(()=> const Test());
      }else{
        Get.offAll(()=> VerifyEmailScreen(email: _auth.currentUser?.email,));

      }

    }else{
        //locatstorage
    if (kDebugMode) {
      print("=========GET STORAGE   Auth Repository=========");
      print(deviceStorage.read('isFirstTime'));
    }

    deviceStorage.writeIfNull("isFirstTime", true);
    deviceStorage.read("isFirstTime") != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());

    }
  
  }

  //*******************************email and password sign in**********************//

  //register

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw PFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw PFirebaseException(e.code).message;
    } on FormatException catch (_) {
      throw const PFormatException();
    } on PlatformException catch (e) {
      throw PPlatformException(e.code).message;
    } catch (e) {
      throw "something went wrong";
    }
  }

  // email verification

  Future<void> sendEmailVerification()async{
    try{
      await _auth.currentUser?.sendEmailVerification();
    }on FirebaseAuthException catch (e){
      throw PFirebaseAuthException(e.code).message;
    }on FirebaseException catch (e){
      throw PFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw const PFormatException();
    }on PlatformException catch (e){
      throw PPlatformException(e.code).message;
    }catch (e){
      throw "something went wrong.please try again";
    }

    
  }

  Future<void> logout()async{
    try{
      await FirebaseAuth.instance.signOut();
      Get.offAll(()=>const LoginScreen());
    }on FirebaseAuthException catch (e){
      throw PFirebaseAuthException(e.code).message;
    }on FirebaseException catch (e){
      throw PFirebaseException(e.code).message;
    }on FormatException catch (_){
      throw const PFormatException();
    }on PlatformException catch (e){
      throw PPlatformException(e.code).message;
    }catch (e){
      throw "something went wrong.please try again";
    }

    
  }

 
}
