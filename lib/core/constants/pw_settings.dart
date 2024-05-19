import '../enums/pw_pattern.dart';

final class PwSettings {
  const PwSettings._();

  static const int minQuantity = 1;

  static const int maxQuantity = 5;

  static const int defaultQuantity = 1;

  static const int minLength = 8;

  static const int maxLength = 32;

  static const int defaultLength = 12;

  static const String lowerCase = 'abcdefghijklmnopqrstuvwxyz';

  static const String upperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  static const String numbers = '0123456789';

  static const String symbols = '!"#\$%&\'()*+,-./:;<=>?@[\\]^_`{|}~';

  static const List<PwPattern> defaultPatterns = PwPattern.values;
}
