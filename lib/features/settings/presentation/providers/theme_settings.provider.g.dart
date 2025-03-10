// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_settings.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$defaultThemeModeHash() => r'819ff359082c29b399eebf4a8f9011214beb85d7';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
