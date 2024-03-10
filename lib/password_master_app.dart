import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/enums/i18n.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';

class PasswordMasterApp extends ConsumerWidget {
  const PasswordMasterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.read(routerProvider).config(),
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: I18n.locales,
      debugShowCheckedModeBanner: false,
    );
  }
}
