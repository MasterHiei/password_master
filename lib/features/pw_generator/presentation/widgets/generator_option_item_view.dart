import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneratorOptionItemView extends StatelessWidget {
  const GeneratorOptionItemView({
    super.key,
    this.leading,
    required this.title,
    this.trailing,
    this.onTap,
    this.onLongPress,
  });

  factory GeneratorOptionItemView.slider(
    BuildContext context, {
    required String leading,
    required String trailing,
    required double value,
    required ValueChanged<double> onChanged,
    required double sliderMin,
    required double sliderMax,
  }) =>
      GeneratorOptionItemView(
        leading: Text(
          leading,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
          ),
        ),
        title: Slider(
          value: value,
          onChanged: onChanged,
          min: sliderMin,
          max: sliderMax,
        ),
        trailing: Text(
          trailing,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
          ),
        ),
      );

  factory GeneratorOptionItemView.checkBox(
    BuildContext context, {
    required String title,
    required bool value,
    required VoidCallback onTap,
    VoidCallback? onLongPress,
  }) =>
      GeneratorOptionItemView(
        title: Text(
          title,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize,
          ),
        ),
        trailing: Checkbox(
          value: value,
          onChanged: (_) => onTap(),
        ),
        onTap: onTap,
        onLongPress: onLongPress,
      );

  final Widget? leading;
  final Widget title;
  final Widget? trailing;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      trailing: trailing,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.r),
      ),
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }
}
