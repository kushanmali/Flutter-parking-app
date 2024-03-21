// ignore_for_file: body_might_complete_normally_nullable

class PValidator {

  //empty text validation

  static String? validateEmptyText(String? fieldName,String? value){
    if(value == null || value.isEmpty){
      return "$fieldName is required" ;
    }
    return null;
  }


  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    //regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return "Invalid email address";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    
    if (value == null || value.isEmpty) {
      return "password is required ";
    }
    //chech menium password lenth

    if (value.length < 6) {
      return "pasword must be at least 6 characters long.";
    }
    //check uppercase letters

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Password must contain at least one uppercase letter";
    }

    //check for numbers

    if (!value.contains(RegExp(r'[0-9]'))) {
      return "password must contain at least one number";
    }
    //check special character

    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return "password must contains at least one special number ";
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return "phone number is required";
    }

    // regular expression for phone number validation
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return "invalid phone number format(10 digit required)";
    }
    return null;
  }
}
