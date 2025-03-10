import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/gen/locale_keys.g.dart';
import '../routing/app.router.dart';
import 'app_toast.dart';

const double _horizontalPadding = 12;

class LeftNavDrawer extends StatelessWidget {
  const LeftNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(top: ScreenUtil().statusBarHeight),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(context),
            Expanded(child: _buildBody(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) => Container(
        alignment: Alignment.centerLeft,
        height: kToolbarHeight,
        padding: const EdgeInsets.symmetric(
          horizontal: _horizontalPadding * 2,
        ),
        child: Text(
          LocaleKeys.app_title,
          style: Theme.of(context).textTheme.titleLarge,
        ).tr(context: context),
      );

  Widget _buildBody(BuildContext context) {
    final List<Widget> items = <Widget>[
      _LeftNavDrawerItem(
        icon: Icons.school_outlined,
        title: LocaleKeys.pages_intro_title.tr(context: context),
        onTap: () => AppToast.show('Coming soon!'),
      ),
      const Divider(
        height: 12,
        indent: _horizontalPadding,
        endIndent: _horizontalPadding,
      ),
      _LeftNavDrawerItem(
        icon: Icons.lock_outline,
        title: LocaleKeys.pages_manager_title.tr(context: context),
        route: const PwManagerRoute(),
      ),
      _LeftNavDrawerItem(
        icon: Icons.settings_outlined,
        title: LocaleKeys.pages_settings_title.tr(context: context),
        route: const SettingsRoute(),
      ),
    ];
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: _horizontalPadding,
      ),
      itemBuilder: (_, int index) => items[index],
      itemCount: items.length,
    );
  }
}

class _LeftNavDrawerItem extends StatelessWidget {
  const _LeftNavDrawerItem({
    required this.icon,
    required this.title,
    this.route,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final PageRouteInfo? route;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    const double height = kToolbarHeight;
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(
          horizontal: _horizontalPadding,
        ),
        child: Row(
          children: <Widget>[
            Icon(icon),
            const SizedBox(width: _horizontalPadding),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
      onTap: () async {
        await context.router.maybePop();
        if (context.mounted) {
          await route?.push<void>(context);
          onTap?.call();
        }
      },
    );
  }
}
