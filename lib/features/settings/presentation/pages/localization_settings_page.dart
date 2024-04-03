import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/enums/i18n.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/top_app_bar.dart';
import '../../../../generated/locale_keys.g.dart';
import '../providers/localization_settings_provider.dart';
import '../providers/states/localization_settings_state.dart';
import '../widgets/index.dart';

@RoutePage()
class LocalizationSettingsPage extends StatelessWidget
    implements AutoRouteWrapper {
  const LocalizationSettingsPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) => ProviderScope(
        overrides: <Override>[
          defaultLocaleProvider.overrideWithValue(context.locale),
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: const Text(LocaleKeys.pages_settings_common_language).tr(
          context: context,
        ),
        actions: const <Widget>[
          ApplyLocalizationSettingsButton(),
        ],
      ),
      body: Padding(
        padding: AppTheme.defaultPagePadding,
        child: _buildListView(context),
      ),
    );
  }

  Widget _buildListView(BuildContext context) {
    final Iterable<Widget> items = I18n.values.map(
      (I18n i18n) => _buildListItemView(context, i18n),
    );
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      itemBuilder: (_, int index) => items.elementAt(index),
      itemCount: items.length,
    );
  }

  Widget _buildListItemView(BuildContext context, I18n i18n) => Consumer(
        builder: (_, WidgetRef ref, __) {
          final bool isSelected = ref.watch(
            localizationSettingsProvider.select(
              (LocalizationSettingsState state) => state.currentValue == i18n,
            ),
          );
          return ListTile(
            title: Text(i18n.localizedName),
            trailing: isSelected
                ? const Icon(Icons.check, color: Colors.green)
                : null,
            onTap: () =>
                ref.read(localizationSettingsProvider.notifier).select(i18n),
          );
        },
      );
}
