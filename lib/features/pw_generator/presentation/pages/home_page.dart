import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/left_nav_drawer.dart';
import '../../../../core/widgets/top_app_bar.dart';
import '../../../../generated/locale_keys.g.dart';
import '../widgets/index.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: const Text(LocaleKeys.app_title).tr(context: context),
        actions: const <Widget>[
          GenerateOptionsButton(),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: const GeneratedPasswordView(),
      ),
      floatingActionButton: const GeneratePasswordButton(),
      drawer: const LeftNavDrawer(),
    );
  }
}
