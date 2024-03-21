

import 'package:intl/intl.dart';

class PFormatter{
  static String formatDate(DateTime? date){
    date ??=DateTime.now();
    return DateFormat("dd-MMM-yyyy").format(date);

  }

  static String formatCurrency(double amount){

    return NumberFormat.currency(locale: "si_LK", symbol:"LKR" ).format(amount);

  }

  static String formatPhoneNumber(String phoneNumber) {
  if (phoneNumber.length == 10) {
    return "(${phoneNumber.substring(0, 2)}) ${phoneNumber.substring(2, 5)}   ${phoneNumber.substring(5)}";
  }
  // Handle other cases or return an error message if needed
  return phoneNumber;
}

  }

