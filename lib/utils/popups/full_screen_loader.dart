import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parking_app/commons/styles/widgets/loaders/animation_loader.dart';

class PFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => PopScope(
            canPop: false,
            child: Container(
              color: const Color.fromARGB(255, 139, 26, 26),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 250),
                  PAnimationLoaderWidth(text: text, animation: animation),
                ],
              ),
            )));

         
  }
   static stopLoading(){
              Navigator.of(Get.overlayContext!).pop();
            }
}
