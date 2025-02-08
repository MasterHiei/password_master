import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/gen/locale_keys.g.dart';
import '../providers/theme_settings.provider.dart';

class ApplyThemeSettingsButton extends ConsumerWidget {
  const ApplyThemeSettingsButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: ref.watch(themeSettingsProvider).settingsChanged
          ? () => _apply(context, ref)
          : null,
      style: TextButton.styleFrom(
        textStyle: Theme.of(context).textTheme.bodyLarge,
      ),
      child: const Text(LocaleKeys.button_apply).tr(context: context),
    );
  }

  void _apply(BuildContext context, WidgetRef ref) =>
      ref.read(themeSettingsProvider).currentValue.enable(context);
}
