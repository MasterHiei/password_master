import 'package:flutter/material.dart';

extension type AppTheme(ThemeData _) implements ThemeData {
  AppTheme.from(Brightness brightness)
      : _ = switch (brightness) {
          Brightness.dark => ThemeData.dark(useMaterial3: true),
          Brightness.light => ThemeData.light(useMaterial3: true),
        };

  static ThemeData get light => AppTheme.from(Brightness.light).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF9813A),
        ),
      );

  static ThemeData get dark => AppTheme.from(Brightness.dark).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0A043C),
        ),
      );
}
