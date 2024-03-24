import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/app_router.dart';

class GenerateOptionsButton extends StatelessWidget {
  const GenerateOptionsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.router.push(const GeneratorOptionsRoute()),
      icon: const Icon(Icons.tune),
    );
  }
}
