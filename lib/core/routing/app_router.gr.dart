// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [GeneratorOptionsPage]
class GeneratorOptionsRoute extends PageRouteInfo<void> {
  const GeneratorOptionsRoute({List<PageRouteInfo>? children})
      : super(
          GeneratorOptionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneratorOptionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const GeneratorOptionsPage();
    },
  );
}

/// generated route for
/// [LocalizationSettingsPage]
class LocalizationSettingsRoute extends PageRouteInfo<void> {
  const LocalizationSettingsRoute({List<PageRouteInfo>? children})
      : super(
          LocalizationSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocalizationSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const LocalizationSettingsPage());
    },
  );
}

/// generated route for
/// [PwGeneratorPage]
class PwGeneratorRoute extends PageRouteInfo<void> {
  const PwGeneratorRoute({List<PageRouteInfo>? children})
      : super(
          PwGeneratorRoute.name,
          initialChildren: children,
        );

  static const String name = 'PwGeneratorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PwGeneratorPage();
    },
  );
}

/// generated route for
/// [PwManagerPage]
class PwManagerRoute extends PageRouteInfo<void> {
  const PwManagerRoute({List<PageRouteInfo>? children})
      : super(
          PwManagerRoute.name,
          initialChildren: children,
        );

  static const String name = 'PwManagerRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const PwManagerPage();
    },
  );
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsPage();
    },
  );
}

/// generated route for
/// [ThemeSettingsPage]
class ThemeSettingsRoute extends PageRouteInfo<void> {
  const ThemeSettingsRoute({List<PageRouteInfo>? children})
      : super(
          ThemeSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThemeSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return WrappedRoute(child: const ThemeSettingsPage());
    },
  );
}
