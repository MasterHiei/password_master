import 'package:collection/collection.dart';

enum PwPattern {
  lowerCase('lowerCase'),
  upperCase('upperCase'),
  numbers('numbers'),
  symbols('symbols');

  const PwPattern(this.value);

  final String value;

  static PwPattern? tryParse(String value) => PwPattern.values.firstWhereOrNull(
        (PwPattern pwPattern) => pwPattern.value == value,
      );

  static PwPattern parse(String value) {
    final PwPattern? pwPattern = tryParse(value);
    if (pwPattern != null) {
      return pwPattern;
    }
    throw FormatException('Invalid PwPattern: $value');
  }
}
