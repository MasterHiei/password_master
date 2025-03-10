import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/extension_types/app_theme_mode.dart';
import 'states/theme_settings.state.dart';

part 'theme_settings.provider.g.dart';

@Riverpod(dependencies: <Object>[])
AppThemeMode defaultThemeMode(Ref ref) => throw UnimplementedError();

@Riverpod(dependencies: <Object>[defaultThemeMode])
class ThemeSettings extends _$ThemeSettings {
  @override
  ThemeSettingsState build() {
    final AppThemeMode initialValue = ref.watch(defaultThemeModeProvider);
    return ThemeSettingsState(
      initialValue: initialValue,
      currentValue: initialValue,
    );
  }

  void select(AppThemeMode value) =>
      state = state.copyWith(currentValue: value);
}
