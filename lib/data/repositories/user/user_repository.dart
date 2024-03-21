
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:parking_app/data/repositories/user/user_model.dart';
import 'package:parking_app/utils/exceptions/firebase_exception.dart';
import 'package:parking_app/utils/exceptions/format_exception.dart';
import 'package:parking_app/utils/exceptions/platform_exception.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;


  Future<void> saveUserRecord(UserModel user) async{
    try{
      await _db.collection("Users").doc(user.id).set(user.toJson());
    }on FirebaseException catch (e){
      throw PFirebaseException(e.code).message;
      
    }on FormatException catch (_){
      throw const PFormatException();
    }on PlatformException catch (e){
      throw PPlatformException(e.code).message;

    }catch(e){
      throw "something went wrong";
    }
  }
}