import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../generated/locale_keys.g.dart';

extension type LocalizedThemeMode(AdaptiveThemeMode _) {
  String localizedName(BuildContext context) {
    final String localeKey = switch (this) {
      AdaptiveThemeMode.system => LocaleKeys.pages_settings_common_theme_system,
      AdaptiveThemeMode.light => LocaleKeys.pages_settings_common_theme_light,
      AdaptiveThemeMode.dark => LocaleKeys.pages_settings_common_theme_dark,
    };
    return localeKey.tr(context: context);
  }
}
