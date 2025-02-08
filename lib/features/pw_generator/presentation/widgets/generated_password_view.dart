import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/gen/locale_keys.g.dart';
import '../../../../core/widgets/app_toast.dart';
import '../providers/pw_generator.provider.dart';

class GeneratedPasswordView extends ConsumerWidget {
  const GeneratedPasswordView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> items = ref.watch(pwGeneratorProvider(seed: hashCode));
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, int index) => _buildItemView(context, ref, index),
      itemCount: items.length,
    );
  }

  Widget _buildItemView(
    BuildContext context,
    WidgetRef ref,
    int index,
  ) =>
      InkWell(
        onTap: () => _copyToClipboard(context, ref, index),
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

  Future<void> _copyToClipboard(
    BuildContext context,
    WidgetRef ref,
    int index,
  ) async {
    final String text = ref.read(pwGeneratorProvider(seed: hashCode))[index];
    await Clipboard.setData(ClipboardData(text: text));
    if (context.mounted) {
      AppToast.show(LocaleKeys.toast_copied.tr(context: context));
    }
  }
}
