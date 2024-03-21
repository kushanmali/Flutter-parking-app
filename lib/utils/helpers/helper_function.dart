 
 import 'package:flutter/material.dart';


import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PHelperFunctions{
  static Color? getColor(String value){

    if (value == "Green"){
      return Colors.green;
    }else if (value == "Green"){
      return Colors.green;
    }else if (value == "red"){
      return Colors.red;
    }else if (value == "blue"){
      return Colors.blue;
    }else if (value == "pink"){
      return Colors.pink;
    }else if (value == "grey"){
      return Colors.grey;
    }else if (value == "purple"){
      return Colors.purple;
    }else if (value == "black"){
      return Colors.black;
    }else if (value == "white"){
      return Colors.white;
    }else if (value == "yellow"){
      return Colors.yellow;
    }else if (value == "orange"){
      return Colors.deepOrange;
    }else if (value == "brown"){
      return Colors.brown;
    }else if (value == "Teal"){
      return Colors.teal;
    }else if (value == "indigo"){
      return Colors.indigo;
    }else{
      return null;
    }
  }

static void showSnackBar(String message){
  ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(content: Text(message)));
}
static void showAlertBar(String title,String message){
  showDialog(
  context: Get.context!,
  builder: (BuildContext context) {
    return AlertDialog(

   title: Text(title),
   content: Text(message),
   actions: [
    TextButton(onPressed: () => Navigator.of(context).pop(), 
    child: const Text("ok"),)
   ],
    );
    
  }
  );
  
}

static void navigateToscreen(BuildContext context,Widget screen){

  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => screen)
  );
}
static String truncateText(String text,int maxLenth){
  if (text.length<= maxLenth){
    return text;
  }else{
    return '${text.substring(0,maxLenth)}...';
  }

}

static Size screenSize(){
  return MediaQuery.of(Get.context!).size;
}
static double screenHeight(){
  return MediaQuery.of(Get.context!).size.height;
}

static double screenWidth(){
  return MediaQuery.of(Get.context!).size.width;
}

static String getformattedDate(DateTime date,{String format = 'dd MMM yyyy'}){
  return DateFormat(format).format(date);
}

static List<P> removeDuplicates<P>(List<P>list){
  return list.toSet().toList();
}

  
}

