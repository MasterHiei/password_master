import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/locale_keys.g.dart';

class CopiedSuccessfullyToast extends StatelessWidget {
  const CopiedSuccessfullyToast({super.key});

  static void show() => BotToast.showCustomText(
        toastBuilder: (_) => const CopiedSuccessfullyToast(),
        duration: const Duration(seconds: 3),
        wrapToastAnimation: (
          AnimationController controller,
          _,
          Widget child,
        ) =>
            _ToastAnimation(controller, child),
        clickClose: true,
        onlyOne: true,
        useSafeArea: true,
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inverseSurface,
        borderRadius: BorderRadius.circular(4.r),
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(kFloatingActionButtonMargin),
      child: Text(
        LocaleKeys.toast_copied,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Theme.of(context).colorScheme.onInverseSurface,
            ),
      ).tr(context: context),
    );
  }
}

class _ToastAnimation extends StatefulWidget {
  const _ToastAnimation(
    this.controller,
    this.child,
  );

  final AnimationController controller;
  final Widget child;

  @override
  _ToastAnimationState createState() => _ToastAnimationState();
}

class _ToastAnimationState extends State<_ToastAnimation> {
  late Animation<double> animation;

  final Tween<double> _tweenScale = Tween<double>(
    begin: 0.6,
    end: 1.0,
  );

  @override
  void initState() {
    animation = CurvedAnimation(
      parent: widget.controller,
      curve: Curves.decelerate,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (_, Widget? child) {
        return Transform.scale(
          scale: _tweenScale.evaluate(animation),
          child: Opacity(
            opacity: animation.value,
            child: child,
          ),
        );
      },
      child: widget.child,
    );
  }
}
