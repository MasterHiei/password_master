import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/extension_types/app_theme_mode.dart';

part 'theme_settings.state.freezed.dart';

@freezed
class ThemeSettingsState with _$ThemeSettingsState {
  const factory ThemeSettingsState({
    required AppThemeMode initialValue,
    required AppThemeMode currentValue,
  }) = _ThemeSettingsState;

  const ThemeSettingsState._();

  bool get settingsChanged => initialValue != currentValue;
}
