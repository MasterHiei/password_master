import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/locale_keys.g.dart';

class LeftNavDrawer extends StatelessWidget {
  const LeftNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = _buildDrawerItems(context);
    return Drawer(
      child: ListView.builder(
        padding: EdgeInsets.only(
          top: ScreenUtil().statusBarHeight,
          bottom: ScreenUtil().bottomBarHeight,
        ),
        itemBuilder: (BuildContext context, int index) => items[index],
        itemCount: items.length,
      ),
    );
  }

  List<Widget> _buildDrawerItems(BuildContext context) {
    return <Widget>[
      ListTile(
        title: Text(
          LocaleKeys.app_title,
          style: TextStyle(fontSize: 16.sp),
        ).tr(context: context),
      ),
      _LeftNavDrawerItem(
        icon: Icons.settings_outlined,
        title: LocaleKeys.drawer_settings.tr(context: context),
      ),
    ];
  }
}

class _LeftNavDrawerItem extends StatelessWidget {
  const _LeftNavDrawerItem({
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon, size: 16.sp),
          const SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(fontSize: 14.sp),
          ),
        ],
      ),
      onTap: () {},
    );
  }
}
