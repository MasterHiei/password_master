import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/enums/i18n.dart';

part 'localization_settings_state.freezed.dart';

@freezed
class LocalizationSettingsState with _$LocalizationSettingsState {
  const factory LocalizationSettingsState({
    required I18n initialValue,
    required I18n currentValue,
  }) = _LocalizationSettingsState;

  const LocalizationSettingsState._();

  bool get settingsChanged => initialValue != currentValue;
}
