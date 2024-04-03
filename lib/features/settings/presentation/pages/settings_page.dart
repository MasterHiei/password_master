import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/enums/i18n.dart';
import '../../../../core/extensions/localized_adaptive_theme_mode.dart';
import '../../../../core/routing/app_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/top_app_bar.dart';
import '../../../../generated/locale_keys.g.dart';
import '../widgets/index.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: const Text(LocaleKeys.pages_settings_title).tr(
          context: context,
        ),
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: AppTheme.defaultPagePadding,
        children: <Widget>[
          _buildCommonSection(context),
        ],
      ),
    );
  }

  Widget _buildCommonSection(BuildContext context) => SettingsSectionView(
        title: LocaleKeys.pages_settings_common_title.tr(context: context),
        children: <Widget>[
          SettingsSectionItemView(
            leadingIcon: Icons.language_outlined,
            title: LocaleKeys.pages_settings_common_language.tr(
              context: context,
            ),
            subtitle: I18n.fromLocale(context.locale).localizedName,
            onTap: () => context.router.push(const LocalizationSettingsRoute()),
          ),
          ValueListenableBuilder<AdaptiveThemeMode>(
            valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
            builder: (_, AdaptiveThemeMode mode, __) => SettingsSectionItemView(
              leadingIcon: Icons.contrast_outlined,
              title: LocaleKeys.pages_settings_common_theme_title.tr(
                context: context,
              ),
              subtitle: LocalizedThemeMode(mode).localizedName(context),
              onTap: () => context.router.push(const ThemeSettingsRoute()),
            ),
          ),
        ],
      );
}
