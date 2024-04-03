import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../generated/locale_keys.g.dart';
import '../providers/localization_settings_provider.dart';

class ApplyLocalizationSettingsButton extends ConsumerWidget {
  const ApplyLocalizationSettingsButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: ref.watch(localizationSettingsProvider).settingsChanged
          ? () => _apply(context, ref)
          : null,
      style: TextButton.styleFrom(
        textStyle: Theme.of(context).textTheme.bodyLarge,
      ),
      child: const Text(LocaleKeys.button_apply).tr(context: context),
    );
  }

  Future<void> _apply(BuildContext context, WidgetRef ref) =>
      ref.read(localizationSettingsProvider).currentValue.enable(context);
}
