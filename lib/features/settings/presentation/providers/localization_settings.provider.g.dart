// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localization_settings.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$defaultLocaleHash() => r'9b2177ce60c76704420d97d341a5235485445541';

/// See also [defaultLocale].
@ProviderFor(defaultLocale)
final defaultLocaleProvider = AutoDisposeProvider<Locale>.internal(
  defaultLocale,
  name: r'defaultLocaleProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$defaultLocaleHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DefaultLocaleRef = AutoDisposeProviderRef<Locale>;
String _$localizationSettingsHash() =>
    r'6eca995f2ca5c9297673af6bf3644bcab400d74b';

/// See also [LocalizationSettings].
@ProviderFor(LocalizationSettings)
final localizationSettingsProvider = AutoDisposeNotifierProvider<
    LocalizationSettings, LocalizationSettingsState>.internal(
  LocalizationSettings.new,
  name: r'localizationSettingsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localizationSettingsHash,
  dependencies: <ProviderOrFamily>[defaultLocaleProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    defaultLocaleProvider,
    ...?defaultLocaleProvider.allTransitiveDependencies
  },
);

typedef _$LocalizationSettings = AutoDisposeNotifier<LocalizationSettingsState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
