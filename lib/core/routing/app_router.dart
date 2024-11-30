import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/logging/presentations/pages/logs_page.dart';
import '../../features/pw_generator/presentation/pages/generator_options_page.dart';
import '../../features/pw_generator/presentation/pages/pw_generator_page.dart';
import '../../features/pw_manager/presentation/pages/pw_manager_page.dart';
import '../../features/settings/presentation/pages/localization_settings_page.dart';
import '../../features/settings/presentation/pages/settings_page.dart';
import '../../features/settings/presentation/pages/theme_settings_page.dart';

part 'app_router.g.dart';
part 'app_router.gr.dart';

@Riverpod(keepAlive: true)
Raw<AppRouter> router(Ref ref) => AppRouter();

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          path: '/',
          page: PwGeneratorRoute.page,
        ),
        AutoRoute(
          path: '/generator/options',
          page: GeneratorOptionsRoute.page,
          type: const CustomRouteType(
            transitionsBuilder: TransitionsBuilders.slideLeft,
          ),
        ),
        AutoRoute(
          path: '/manager',
          page: PwManagerRoute.page,
        ),
        AutoRoute(
          path: '/settings',
          page: SettingsRoute.page,
        ),
        AutoRoute(
          path: '/settings/localization',
          page: LocalizationSettingsRoute.page,
        ),
        AutoRoute(
          path: '/settings/theme',
          page: ThemeSettingsRoute.page,
        ),
        AutoRoute(
          path: '/logging/logs',
          page: LogsRoute.page,
        ),
      ];
}
