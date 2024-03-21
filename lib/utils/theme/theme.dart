import 'package:flutter/material.dart';
import 'package:parking_app/utils/theme/custome_theme/text_theme.dart';


import 'custome_theme/appbar_theme.dart';
import 'custome_theme/bottom_sheet_theme.dart';
import 'custome_theme/checkbox_theme.dart';
import 'custome_theme/chip_theme.dart';
import 'custome_theme/elevated_button_theme.dart';
import 'custome_theme/outlined_button_theme.dart';
import 'custome_theme/text_feild_theme.dart';




class PAppTheme{
  PAppTheme._();

  static ThemeData lightheme =ThemeData(
    useMaterial3:true,
    fontFamily: 'GoogleFonts.poppins',
    brightness: Brightness.light,
    primaryColor: const Color.fromRGBO(113, 210, 129, 1),
    scaffoldBackgroundColor: Colors.white,
    textTheme: PTextTheme.lightTextTheme, 
    chipTheme: PChipTheme.lightChipTheme,
    appBarTheme: PAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: PBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: PElevatedButtonTheme.lightelevatedButtonTheme,
    outlinedButtonTheme: POutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: PTextFormFeildTheme.lightinputDecorationTheme,
    checkboxTheme: PCheckBoxTheme.lightCheckBoxTheme,

   



  );



 

}