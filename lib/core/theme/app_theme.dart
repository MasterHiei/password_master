import 'package:flutter/material.dart';

extension type AppTheme(ThemeData _) implements ThemeData {
  static ThemeData get light => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: const Color(0xFFC6D1F1),
      );

  static ThemeData get dark => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xFF0A043C),
      );
}
