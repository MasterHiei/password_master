import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/enums/i18n.dart';
import 'states/localization_settings_state.dart';

part 'localization_settings_provider.g.dart';

@Riverpod(dependencies: <Object>[])
Locale defaultLocale(Ref ref) => throw UnimplementedError();

@Riverpod(dependencies: <Object>[defaultLocale])
class LocalizationSettings extends _$LocalizationSettings {
  @override
  LocalizationSettingsState build() {
    final I18n initialValue = I18n.fromLocale(ref.watch(defaultLocaleProvider));
    return LocalizationSettingsState(
      initialValue: initialValue,
      currentValue: initialValue,
    );
  }

  void select(I18n value) => state = state.copyWith(currentValue: value);
}
