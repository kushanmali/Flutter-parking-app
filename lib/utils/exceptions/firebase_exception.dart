

class PFirebaseException implements Exception{
  final String code;

  PFirebaseException(this.code);
  String get message{
    switch (code){

      case 'unknown':
      return ' An unknown firebase error occurred.please try again';
      // Authentication Errors
      case 'email-already-in-use':
        return 'The email address is already registered. Please try a different email.';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'weak-password':
        return 'The password is too weak. Please try a strong password.';
      case 'user-disabled':
        return 'This user has been disabled. Please contact support for assistance.';
      case 'user-not-found':
        return 'Invalid login details. User not found.';
      case 'wrong-password':
        return 'Invalid password. Please check your password and try again.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please try a valid code.';
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please request a new verification code.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'email-already-exists':
        return 'This email already exists. Please use a different email.';
      case 'provider-already-linked':
        return 'The account is already linked with another provider.';
      case 'invalid-credential':
        return 'Invalid credentials. Please check your authentication information.';
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
      
      // Realtime Database Errors
      case 'permission-denied':
        return 'Permission denied. You do not have the necessary permissions for this operation.';
      case 'data-not-found':
        return 'Data not found. The requested data does not exist.';
      case 'write-canceled':
        return 'Write canceled. The write was canceled, likely due to a security rule violation.';

      // Firestore Errors
      case 'cancelled':
        return 'Operation canceled. The operation was canceled, typically due to a concurrent modification.';
      case 'deadline-exceeded':
        return 'Deadline exceeded. The operation could not be completed within the specified deadline.';
      case 'already-exists':
        return 'Document already exists. The document you are trying to add already exists.';
      case 'not-found':
        return 'Document not found. The requested document does not exist.';
        case 'object-not-found':
        return 'Object not found. The requested object does not exist.';
      case 'bucket-not-found':
        return 'Bucket not found. The specified bucket does not exist.';
      case 'project-not-found':
        return 'Project not found. The specified project does not exist.';

      // Keychain Errors
      case 'keychain-error':
        return 'Keychain error. There was an error with the keychain.';

       default:
        return 'An unknown error occurred.';
    }
  }
}