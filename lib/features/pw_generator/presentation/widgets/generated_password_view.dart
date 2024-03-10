import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/locale_keys.g.dart';
import '../providers/pw_generator_provider.dart';

class GeneratedPasswordView extends ConsumerWidget {
  const GeneratedPasswordView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.r),
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
      BotToast.showAttachedWidget(
        targetContext: context,
        verticalOffset: 4.h,
        duration: const Duration(seconds: 3),
        attachedBuilder: (_) => Container(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.inverseSurface,
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Text(
            LocaleKeys.toast_copied,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onInverseSurface,
              fontSize: 12.sp,
            ),
          ).tr(context: context),
        ),
      );
    }
  }
}
