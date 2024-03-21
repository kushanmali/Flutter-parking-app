import 'package:flutter/material.dart';


class PTextTheme{
  PTextTheme._();


  static TextTheme lightTextTheme = TextTheme(

    headlineLarge:const TextStyle().copyWith(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 24,fontWeight: FontWeight.w600,color: Colors.black),
    headlineSmall:const TextStyle().copyWith(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.black),

    titleLarge: const TextStyle().copyWith(fontSize: 15,fontWeight: FontWeight.w600,color:Colors.black),
    titleMedium: const TextStyle().copyWith(fontSize: 15,fontWeight: FontWeight.w500,color:Colors.black),
    titleSmall: const TextStyle().copyWith(fontSize: 15,fontWeight: FontWeight.w400,color:Colors.black),

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color:Colors.black),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color:Colors.black),
    bodySmall: const TextStyle().copyWith(fontSize: 15,fontWeight: FontWeight.w500,color:Colors.black.withOpacity(0.5)),

    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color:Colors.black),
    labelMedium: const TextStyle().copyWith(fontSize: 15,fontWeight: FontWeight.normal,color:Colors.black.withOpacity(0.5)),
  );
  
  


}