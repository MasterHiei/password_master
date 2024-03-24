import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../providers/pw_generator_provider.dart';
import 'copied_successfully_toast.dart';

class GeneratedPasswordView extends ConsumerWidget {
  const GeneratedPasswordView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> items = ref.watch(pwGeneratorProvider(seed: hashCode));
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, int index) => _buildItemView(ref, index),
      itemCount: items.length,
    );
  }

  Widget _buildItemView(WidgetRef ref, int index) => InkWell(
        onTap: () => _copyToClipboard(ref, index),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
          child: Text(
            ref.watch(pwGeneratorProvider(seed: hashCode))[index],
            style: TextStyle(
              fontSize: 16.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );

  Future<void> _copyToClipboard(WidgetRef ref, int index) async {
    final String text = ref.read(pwGeneratorProvider(seed: hashCode))[index];
    await Clipboard.setData(ClipboardData(text: text));
    CopiedSuccessfullyToast.show();
  }
}
