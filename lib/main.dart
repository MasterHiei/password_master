import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/constants/app_settings.dart';
import 'core/enums/i18n.dart';
import 'core/providers/prefs_provider.dart';
import 'password_master_app.dart';

void main() async {
  await _ensureInitialized();

  final AdaptiveThemeMode? savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(
    ProviderScope(
      overrides: await _generateOverrides(),
      child: ScreenUtilInit(
        builder: (_, __) => EasyLocalization(
          supportedLocales: I18n.locales,
          path: 'assets/i18n',
          fallbackLocale: I18n.defaultLocal,
          child: PasswordMasterApp(savedThemeMode: savedThemeMode),
        ),
        designSize: AppSettings.designSize,
      ),
    ),
  );
}

Future<void> _ensureInitialized() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
}

Future<List<Override>> _generateOverrides() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return <Override>[
    prefsProvider.overrideWithValue(prefs),
  ];
}
