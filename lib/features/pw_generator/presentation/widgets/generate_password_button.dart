import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/pw_generator_provider.dart';

class GeneratePasswordButton extends ConsumerWidget {
  const GeneratePasswordButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      child: const Icon(Icons.refresh),
      onPressed: () => ref.invalidate(pwGeneratorProvider),
    );
  }
}
