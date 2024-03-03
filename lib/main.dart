import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/app_settings.dart';
import 'core/enums/i18n.dart';
import 'password_master_app.dart';

Future<void> main() async {
  await _ensureInitialized();

  runApp(
    ProviderScope(
      child: ScreenUtilInit(
        builder: (_, __) => EasyLocalization(
          supportedLocales: I18n.locales,
          path: 'assets/i18n',
          fallbackLocale: I18n.defaultLocal,
          child: const PasswordMasterApp(),
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
