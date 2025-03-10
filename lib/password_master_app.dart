import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'core/enums/i18n.dart';
import 'core/extension_types/app_theme.dart';
import 'core/routing/app.router.dart';
import 'core/utils/logger.dart';

class PasswordMasterApp extends ConsumerWidget {
  const PasswordMasterApp({
    super.key,
    this.savedThemeMode,
  });

  final AdaptiveThemeMode? savedThemeMode;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Widget builder(ThemeData theme, ThemeData darkTheme) => MaterialApp.router(
          routerConfig: ref.read(routerProvider).config(
                navigatorObservers: () => <NavigatorObserver>[
                  BotToastNavigatorObserver(),
                  TalkerRouteObserver(talker),
                ],
              ),
          builder: BotToastInit(),
          theme: theme,
          darkTheme: darkTheme,
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: I18n.locales,
          debugShowCheckedModeBanner: false,
        );

    return AdaptiveTheme(
      light: AppTheme.light,
      dark: AppTheme.dark,
      initial: savedThemeMode ?? AdaptiveThemeMode.system,
      builder: builder,
    );
  }
}
