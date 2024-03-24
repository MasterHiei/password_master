import 'package:auto_route/auto_route.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/pw_generator/presentation/pages/generator_options_page.dart';
import '../../features/pw_generator/presentation/pages/home_page.dart';

part 'app_router.g.dart';
part 'app_router.gr.dart';

@Riverpod(keepAlive: true)
Raw<AppRouter> router(RouterRef ref) => AppRouter();

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          path: '/',
          page: HomeRoute.page,
        ),
        AutoRoute(
          path: '/generator/options',
          page: GeneratorOptionsRoute.page,
          type: const CustomRouteType(
            transitionsBuilder: TransitionsBuilders.slideLeft,
          ),
        ),
      ];
}
