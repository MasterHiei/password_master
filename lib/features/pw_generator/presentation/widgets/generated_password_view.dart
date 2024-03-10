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
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.r),
      ),
      onTap: () => _copyToClipboard(
        context,
        ref,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        child: Text(
          ref.watch(pwGeneratorProvider(seed: hashCode)),
          style: TextStyle(
            fontSize: 16.sp,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Future<void> _copyToClipboard(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final String text = ref.read(pwGeneratorProvider(seed: hashCode));
    await Clipboard.setData(ClipboardData(text: text));

    if (context.mounted) {
      CopiedSuccessfullyToast.show(context);
    }
  }
}
