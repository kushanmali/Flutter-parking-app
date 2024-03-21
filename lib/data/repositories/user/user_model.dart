import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:parking_app/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get fullName => "$firstName $lastName";

  String get formattedPhoneNo => PFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(fullName) => fullName.split("");

  static String generateUserName(fullName) {
    List<String> nameParts = fullName.split("");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

    String camelCaseUsername = "$firstName$lastName";
    String usernameWithPrefix = "cwt_$camelCaseUsername";
    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(
      id: "",
      firstName: "",
      lastName: "",
      username: "",
      email: "",
      phoneNumber: "",
      profilePicture: "");

  //convert jaston to firebase

  Map<String, dynamic> toJson() {
    return {
      "FirstName": firstName,
      "LastName": lastName,
      "UserName": username,
      "Email": email,
      "PhoneNumber": phoneNumber,
      "profilePicture": profilePicture,
    };
  }

  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
          id: document.id,
          firstName: data['FirstName'] ?? '',
          lastName: data['LastName'] ?? '',
          username: data['UserName'] ?? '',
          email: data['Email'] ?? '',
          phoneNumber: data['PhoneNumber'] ?? '',
          profilePicture: data['ProfilePicture'] ?? '');
    }else{
      throw Exception("Document data is null");

    }
  }
}






// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:parking_app/utils/formatters/formatter.dart';

// class UserModel {
//     final String id;
//   String firstName;
//   String lastName;
//   final String username;
//   final String email;
//   String phoneNumber;
//   String profilePicture;

//   UserModel({
//     required this.id,
//     required this.firstName,
//     required this.lastName,
//     required this.username,
//     required this.email,
//     required this.phoneNumber,
//     required this.profilePicture,
//   });
//     String get fullName => "$firstName $lastName";

//   String get formattedPhoneNo => PFormatter.formatPhoneNumber(phoneNumber);

//   static List<String> nameParts(fullName) => fullName.split("");
 

//   static String generateUserName(String fullName) {
//     List<String> nameParts = fullName.split(" ");
//     String firstName = nameParts[0].toLowerCase();
//     String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";

//     String camelCaseUsername = "$firstName$lastName";
//     String usernameWithPrefix = "cwt_$camelCaseUsername";
//     return usernameWithPrefix;
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       "firstName": firstName,
//       "lastName": lastName,
//       "username": username,
//       "email": email,
//       "phoneNumber": phoneNumber,
//       "profilePicture": profilePicture,
//     };
//   }

//   factory UserModel.fromSnapshot(
//       DocumentSnapshot<Map<String, dynamic>> document) {
//     if (document.data() != null) {
//       final data = document.data()!;
//       return UserModel(
//         id: document.id,
//         firstName: data['firstName'] ?? '',
//         lastName: data['lastName'] ?? '',
//         username: data['username'] ?? '',
//         email: data['email'] ?? '',
//         phoneNumber: data['phoneNumber'] ?? '',
//         profilePicture: data['profilePicture'] ?? '',
//       );
//     } else {
//       throw Exception("Document data is null");
//     }
//   }
// }

