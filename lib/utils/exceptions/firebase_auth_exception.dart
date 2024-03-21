class PFirebaseAuthException implements Exception {
  final String code;

  PFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is already registered.please try a diffrent email';
      case 'invalid-email':
        return 'The email address provide is invalid.please enter a valid email';
      case 'weak-password':
        return 'The password is to weak.please try a strong password';
      case 'user-disabled':
        return 'This user has been disabled.please contact support for assistance';
      case 'user-not-found':
        return 'Invalid login details.user not found';
      case 'wrong-password':
        return 'Invalid password.please check your password and try again';
      case ' invalid-verification-code':
        return 'Invalid verification code.please try a valid code';
      case 'invalid-verification-id':
        return ' Invalid verification id.please request a new verification code';
      case 'quota-exceeded':
        return 'quota exceeded.please try again later';
      case 'email-already-exists':
        return 'This email already exist.please use diffrent email';
      case 'provider-already-linked':
        return 'The account already link with a other provider';

      case 'invalid-credintial':
        return 'Invalid credentials. Please check your authentication information';

      case 'account-not-verified':
        return 'Account not verified. Please verify your email address.';
      case 'expired-token':
        return 'The authentication token has expired. Please log in again.';
      case 'invalid-refresh-token':
        return 'Invalid refresh token. Please log in again.';
      case 'session-expired':
        return 'Session expired. Please log in again.';
      case 'account-suspended':
        return 'Account suspended. Please contact support for further assistance.';
      case 'invalid-two-factor-code':
        return 'Invalid two-factor authentication code. Please try again.';
      case 'missing-required-fields':
        return 'Missing required fields. Please provide all necessary information.';
      case 'unauthorized-access':
        return 'Unauthorized access. Please log in with proper credentials.';

        default:
        return 'An unknown error occurred.';
    }
  }
}
