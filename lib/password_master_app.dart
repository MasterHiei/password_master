import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/enums/i18n.dart';
import 'core/routing/app_router.dart';
import 'core/theme/app_theme.dart';

class PasswordMasterApp extends ConsumerWidget {
  const PasswordMasterApp({
    super.key,
    this.savedThemeMode,
  });

  final AdaptiveThemeMode? savedThemeMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AdaptiveTheme(
      light: AppTheme.light,
      dark: AppTheme.dark,
      initial: savedThemeMode ?? AdaptiveThemeMode.system,
      builder: (ThemeData theme, ThemeData darkTheme) => MaterialApp.router(
        routerConfig: ref.read(routerProvider).config(
              navigatorObservers: () => <NavigatorObserver>[
                BotToastNavigatorObserver(),
              ],
            ),
        builder: BotToastInit(),
        theme: theme,
        darkTheme: darkTheme,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: I18n.locales,
        debugShowCheckedModeBanner: false,
      ),
      debugShowFloatingThemeButton: true,
    );
  }
}
