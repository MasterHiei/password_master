// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_settings_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$defaultThemeModeHash() => r'df3b2a94b882efaf5f19fa533a9ba5e3259c5a38';

/// See also [defaultThemeMode].
@ProviderFor(defaultThemeMode)
final defaultThemeModeProvider = AutoDisposeProvider<AppThemeMode>.internal(
  defaultThemeMode,
  name: r'defaultThemeModeProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$defaultThemeModeHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef DefaultThemeModeRef = AutoDisposeProviderRef<AppThemeMode>;
String _$themeSettingsHash() => r'18a39e990abfc988ebe9f1c4a2142a8793e6b049';

/// See also [ThemeSettings].
@ProviderFor(ThemeSettings)
final themeSettingsProvider =
    AutoDisposeNotifierProvider<ThemeSettings, ThemeSettingsState>.internal(
  ThemeSettings.new,
  name: r'themeSettingsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$themeSettingsHash,
  dependencies: <ProviderOrFamily>[defaultThemeModeProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    defaultThemeModeProvider,
    ...?defaultThemeModeProvider.allTransitiveDependencies
  },
);

typedef _$ThemeSettings = AutoDisposeNotifier<ThemeSettingsState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
