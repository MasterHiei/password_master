import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/left_nav_drawer.dart';
import '../../../../core/widgets/top_app_bar.dart';
import '../../../../generated/locale_keys.g.dart';
import '../widgets/index.dart';

@RoutePage()
class PwGeneratorPage extends StatelessWidget {
  const PwGeneratorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: const Text(LocaleKeys.app_title).tr(context: context),
        actions: const <Widget>[
          GenerateOptionsButton(),
        ],
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          padding: AppTheme.defaultPagePadding,
          child: const GeneratedPasswordView(),
        ),
      ),
      floatingActionButton: const GeneratePasswordButton(),
      drawer: const LeftNavDrawer(),
    );
  }
}
