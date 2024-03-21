import 'package:flutter/material.dart';

class PColors{
  PColors._();


// app basic colors

  static const Color primary = Color.fromARGB(113, 210, 129, 1);
  static const Color secondary = Color.fromARGB(255, 209, 234, 21);
  static const Color accent = Color.fromARGB(255, 158, 156, 205);
  
  static const Color primary2 = Color.fromRGBO(7, 173, 62, 1);
  

// text colors
  static const Color textprimary = Color(0xFF333333);
  static const Color textsecondary =Color(0XFF6C7570);
  static const Color white = Colors.blue;
  

  //background color
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark =Color(0XFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  //gradient color

  static const Gradient linerGradient = LinearGradient(

    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
     colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
     ]


  );

  //background container color

  static const Color lightcontainer = Color(0xFFF6F6F6);
  static  Color darkcontainer = PColors.white.withOpacity(0.1);

  //button colors

  static const Color buttonPrimary = Color.fromRGBO(113, 210, 129, 1);
  static const Color buttonSecondery =Color(0XFF6C7570);
  static const Color primaryDisabled = Color(0xFFC4C4C4);

  //border colors

  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondery =Color(0XFFE6E6E6);

  //error and validation colors

  static const Color error = Color.fromARGB(251, 242, 5, 5);
  static const Color success =Color.fromARGB(255, 28, 9, 233);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);


  //nural shadows

  static const Color black = Color(0xFF232323);
  static const Color darkerGrey =Color(0XFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey =Color(0XFF4F4F4F);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white2 = Color(0xFFFFFFFF);


  






  


}