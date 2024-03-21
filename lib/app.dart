import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:parking_app/blindings/general_binding.dart';

import 'package:parking_app/utils/constants/colors.dart';


import 'package:parking_app/utils/theme/theme.dart';

class PApp extends StatelessWidget {
  const PApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      
      themeMode: ThemeMode.light,
      theme:PAppTheme.lightheme,
      initialBinding: GeneralBindings(),
      home : const Scaffold( backgroundColor: PColors.primary2,body: Center(child: CircularProgressIndicator(color: Colors.white,),),)
    );
  }
}