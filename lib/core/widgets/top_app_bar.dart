import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../routing/app.router.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopAppBar({
    super.key,
    this.title,
    this.actions = const <Widget>[],
    this.bottom,
  });

  final Widget? title;
  final List<Widget> actions;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: <Widget>[
        if (kDebugMode) _buildAppLogsButton(context),
        ...actions,
      ],
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize {
    final double bottomHeight = bottom?.preferredSize.height ?? 0;
    return Size.fromHeight(kToolbarHeight + bottomHeight);
  }

  Widget _buildAppLogsButton(BuildContext context) => IconButton(
        onPressed: () => const LogsRoute().push<void>(context),
        icon: const Icon(Icons.monitor_heart_outlined),
      );
}
