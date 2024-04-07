// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    GeneratorOptionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GeneratorOptionsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LocalizationSettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const LocalizationSettingsPage()),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    ThemeSettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ThemeSettingsPage()),
      );
    },
  };
}

/// generated route for
/// [GeneratorOptionsPage]
class GeneratorOptionsRoute extends PageRouteInfo<void> {
  const GeneratorOptionsRoute({List<PageRouteInfo>? children})
      : super(
          GeneratorOptionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneratorOptionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
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

  static const PageInfo<void> page = PageInfo<void>(name);
}
