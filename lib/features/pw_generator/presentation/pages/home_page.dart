import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../generated/locale_keys.g.dart';
import '../providers/pw_generator_provider.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LocaleKeys.app_title).tr(context: context),
      ),
      body: Center(
        child: Consumer(
          builder: (_, WidgetRef ref, __) {
            return Text(ref.watch(pwGeneratorProvider));
          },
        ),
      ),
    );
  }
}
