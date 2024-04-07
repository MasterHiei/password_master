import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/extensions/app_theme_mode.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/top_app_bar.dart';
import '../../../../generated/locale_keys.g.dart';
import '../providers/states/theme_settings_state.dart';
import '../providers/theme_settings_provider.dart';
import '../widgets/index.dart';

@RoutePage()
class ThemeSettingsPage extends StatelessWidget implements AutoRouteWrapper {
  const ThemeSettingsPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => ProviderScope(
        overrides: <Override>[
          defaultThemeModeProvider.overrideWithValue(
            AppThemeMode(AdaptiveTheme.of(context).mode),
          ),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: const Text(LocaleKeys.pages_settings_common_theme_title).tr(
          context: context,
        ),
        actions: const <Widget>[
          ApplyThemeSettingsButton(),
        ],
      ),
      body: Padding(
        padding: AppTheme.defaultPagePadding,
        child: _buildListView(context),
      ),
    );
  }

  Widget _buildListView(BuildContext context) {
    final Iterable<Widget> items = AdaptiveThemeMode.values
        .map((AdaptiveThemeMode mode) => AppThemeMode(mode))
        .map((AppThemeMode mode) => _buildListItemView(context, mode));
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      itemBuilder: (_, int index) => items.elementAt(index),
      itemCount: items.length,
    );
  }

  Widget _buildListItemView(
    BuildContext context,
    AppThemeMode mode,
  ) =>
      Consumer(
        builder: (_, WidgetRef ref, __) {
          final bool isSelected = ref.watch(
            themeSettingsProvider.select(
              (ThemeSettingsState state) => state.currentValue == mode,
            ),
          );
          return ListTile(
            title: Text(mode.localizedName(context)),
            trailing: isSelected
                ? const Icon(Icons.check, color: Colors.green)
                : null,
            onTap: () => ref.read(themeSettingsProvider.notifier).select(mode),
          );
        },
      );
}
