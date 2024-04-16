import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppToast extends StatelessWidget {
  const AppToast._(this.text);

  final String text;

  static void show(String text) => BotToast.showCustomText(
        toastBuilder: (_) => AppToast._(text),
        duration: const Duration(seconds: 3),
        wrapToastAnimation: _ToastAnimation.new,
        clickClose: true,
        onlyOne: true,
        useSafeArea: true,
      );

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: theme.colorScheme.inverseSurface,
        borderRadius: BorderRadius.circular(4.r),
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(kFloatingActionButtonMargin),
      child: Text(
        text,
        style: theme.textTheme.labelLarge?.copyWith(
          color: theme.colorScheme.onInverseSurface,
        ),
      ),
    );
  }
}

class _ToastAnimation extends StatefulWidget {
  const _ToastAnimation(
    this.controller,
    this.cancelFunc,
    this.child,
  );

  final AnimationController controller;
  final CancelFunc cancelFunc;
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
