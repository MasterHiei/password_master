import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/top_app_bar.dart';
import '../../../../generated/locale_keys.g.dart';

@RoutePage()
class PwManagerPage extends StatelessWidget {
  const PwManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: const Text(LocaleKeys.pages_manager_title).tr(
          context: context,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: AppTheme.defaultPagePadding,
        child: const SizedBox.shrink(),
      ),
    );
  }
}
