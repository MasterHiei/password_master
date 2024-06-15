import 'package:flutter/material.dart';

import '../../../../core/routing/app_router.dart';

class GenerateOptionsButton extends StatelessWidget {
  const GenerateOptionsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => const GeneratorOptionsRoute().push<void>(context),
      icon: const Icon(Icons.tune),
    );
  }
}
