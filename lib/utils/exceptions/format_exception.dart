class PFormatException implements Exception {
  final String message;
  const PFormatException(
      [this.message =
          'An unexpected format occurred.please check your imputs']);

  factory PFormatException.fromMessage(String message) {
    return PFormatException(message);
  }

  String get formattedMessage => message;

  factory PFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return const PFormatException(
            "The provided email address format is invalid.please enter a valid email");

      case 'invalid-phone-number-format':
        return const PFormatException(
            "The provided phone number format is invalid.please enter a valid number");

      case 'invalid-date-format':
        return const PFormatException(
            "The provided date format is invalid.please enter a valid email");
      case 'invalid-url-format':
        return const PFormatException(
            "The provided url is invalid.please enter a valid email");
      case 'invalid-cradit-card-format':
        return const PFormatException(
            "The provided cradit card format is invalid.please enter a valid email");
      case 'invalid-numeric-format':
        return const PFormatException(
            "The input should be a valid numaric format");

      default:
        return const PFormatException();
    }
  }
}
