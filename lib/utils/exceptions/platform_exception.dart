
class PPlatformException implements Exception{
  final String code;
  
  PPlatformException(this.code);

  String get message{
    switch (code){
      case 'invalid-login-credentials':
      return 'Invalid user credentials.please double check your infromations';
      case 'to-many-request':
      return 'To many request please try again later';
      case 'invalid_password':
      return 'Invalid password. Please double-check your information.';
    case 'invalid_phone_number':
      return 'Invalid phone number. Please double-check your information.';
    case 'invalid_email':
      return 'Invalid email address. Please double-check your information.';
       case 'uid_exists':
      return 'User with this ID already exists. Please choose a different ID.';
    case 'invalid_verification_code':
      return 'Invalid verification code. Please enter a valid code.';

     default:
        return 'Unknown error occurred.';

    }
  }
}