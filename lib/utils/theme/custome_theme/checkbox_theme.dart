import 'package:flutter/material.dart';


class PCheckBoxTheme{

    PCheckBoxTheme._();

    //light
    
    static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      checkColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.selected)) {
          return Colors.white;

        }else{
          return Colors.black;
          
        }

      }), 

      fillColor: MaterialStateProperty.resolveWith((states) {
        if(states.contains(MaterialState.selected)){

          return const Color.fromRGBO(113, 210, 129, 1);

        }else{
          return Colors.transparent;
        }
      })
    );

   
      
}