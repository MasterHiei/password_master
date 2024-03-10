import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/locale_keys.g.dart';

class CopiedSuccessfullyToast extends StatelessWidget {
  const CopiedSuccessfullyToast({super.key});

  static void show(BuildContext targetContext) => BotToast.showAttachedWidget(
        targetContext: targetContext,
        verticalOffset: 6.h,
        duration: const Duration(seconds: 3),
        attachedBuilder: (_) => const CopiedSuccessfullyToast(),
      );

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
