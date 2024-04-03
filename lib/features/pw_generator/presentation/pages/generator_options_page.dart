import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/pw_settings.dart';
import '../../../../core/enums/pw_pattern.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/top_app_bar.dart';
import '../../../../generated/locale_keys.g.dart';
import '../providers/pw_generator_length_provider.dart';
import '../providers/pw_generator_patterns_provider.dart';
import '../providers/pw_generator_quantity_provider.dart';
import '../widgets/index.dart';

@RoutePage()
class GeneratorOptionsPage extends StatelessWidget {
  const GeneratorOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = <Widget>[
      _buildQuantitySlider(context),
      _buildLengthSlider(context),
      _buildLowerCaseCheckBox(context),
      _buildUpperCaseCheckBox(context),
      _buildNumbersCheckBox(context),
      _buildSymbolsCheckBox(context),
    ];
    return Scaffold(
      appBar: TopAppBar(
        title: const Text(LocaleKeys.pages_generator_options_title).tr(
          context: context,
        ),
      ),
      body: ListView.separated(
        physics: const ClampingScrollPhysics(),
        padding: AppTheme.defaultPagePadding,
        itemBuilder: (_, int index) => items[index],
        separatorBuilder: (_, __) => SizedBox(height: 12.h),
        itemCount: items.length,
      ),
    );
  }

  Widget _buildQuantitySlider(BuildContext context) => Consumer(
        builder: (_, WidgetRef ref, __) {
          final double currentValue = ref.watch(pwGeneratorQuantityProvider);
          return GeneratorOptionItemView.slider(
            context,
            leading: LocaleKeys.pages_generator_options_quantity.tr(
              context: context,
            ),
            trailing: currentValue.toStringAsFixed(0),
            value: currentValue,
            onChanged: ref.read(pwGeneratorQuantityProvider.notifier).save,
            sliderMin: PwSettings.minQuantity.toDouble(),
            sliderMax: PwSettings.maxQuantity.toDouble(),
          );
        },
      );

  Widget _buildLengthSlider(BuildContext context) => Consumer(
        builder: (_, WidgetRef ref, __) {
          final double currentValue = ref.watch(pwGeneratorLengthProvider);
          return GeneratorOptionItemView.slider(
            context,
            leading: LocaleKeys.pages_generator_options_length.tr(
              context: context,
            ),
            trailing: currentValue.toStringAsFixed(0),
            value: currentValue,
            onChanged: ref.read(pwGeneratorLengthProvider.notifier).save,
            sliderMin: PwSettings.minLength.toDouble(),
            sliderMax: PwSettings.maxLength.toDouble(),
          );
        },
      );

  Widget _buildLowerCaseCheckBox(BuildContext context) => Consumer(
        builder: (_, WidgetRef ref, __) {
          const PwPattern pattern = PwPattern.lowerCase;
          final bool currentValue = ref.watch(
            pwGeneratorPatternsProvider.select(
              (List<PwPattern> value) => value.contains(pattern),
            ),
          );
          return GeneratorOptionItemView.checkBox(
            context,
            title: LocaleKeys.pages_generator_options_lowercase.tr(
              context: context,
            ),
            value: currentValue,
            onTap: () =>
                ref.read(pwGeneratorPatternsProvider.notifier).toggle(pattern),
          );
        },
      );

  Widget _buildUpperCaseCheckBox(BuildContext context) => Consumer(
        builder: (_, WidgetRef ref, __) {
          const PwPattern pattern = PwPattern.upperCase;
          final bool currentValue = ref.watch(
            pwGeneratorPatternsProvider.select(
              (List<PwPattern> value) => value.contains(pattern),
            ),
          );
          return GeneratorOptionItemView.checkBox(
            context,
            title: LocaleKeys.pages_generator_options_uppercase.tr(
              context: context,
            ),
            value: currentValue,
            onTap: () =>
                ref.read(pwGeneratorPatternsProvider.notifier).toggle(pattern),
          );
        },
      );

  Widget _buildNumbersCheckBox(BuildContext context) => Consumer(
        builder: (_, WidgetRef ref, __) {
          const PwPattern pattern = PwPattern.numbers;
          final bool currentValue = ref.watch(
            pwGeneratorPatternsProvider.select(
              (List<PwPattern> value) => value.contains(pattern),
            ),
          );
          return GeneratorOptionItemView.checkBox(
            context,
            title: LocaleKeys.pages_generator_options_numbers.tr(
              context: context,
            ),
            value: currentValue,
            onTap: () =>
                ref.read(pwGeneratorPatternsProvider.notifier).toggle(pattern),
          );
        },
      );

  Widget _buildSymbolsCheckBox(BuildContext context) => Consumer(
        builder: (_, WidgetRef ref, __) {
          const PwPattern pattern = PwPattern.symbols;
          final bool currentValue = ref.watch(
            pwGeneratorPatternsProvider.select(
              (List<PwPattern> value) => value.contains(pattern),
            ),
          );
          return GeneratorOptionItemView.checkBox(
            context,
            title: LocaleKeys.pages_generator_options_symbols.tr(
              context: context,
            ),
            value: currentValue,
            onTap: () =>
                ref.read(pwGeneratorPatternsProvider.notifier).toggle(pattern),
          );
        },
      );
}
