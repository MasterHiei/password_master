import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/locale_keys.g.dart';

double get _outerHorizontalPadding => 8.w;

double get _innerHorizontalPadding => 12.w;

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
        padding: EdgeInsets.symmetric(
          horizontal: _outerHorizontalPadding + _innerHorizontalPadding,
        ),
        child: Text(
          LocaleKeys.app_title,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.titleLarge?.fontSize,
          ),
        ).tr(context: context),
      );

  Widget _buildBody(BuildContext context) {
    final List<Widget> items = <Widget>[
      _LeftNavDrawerItem(
        icon: Icons.school_outlined,
        title: LocaleKeys.drawer_intro.tr(context: context),
      ),
      Divider(
        height: 8.h,
        indent: _innerHorizontalPadding,
        endIndent: _innerHorizontalPadding,
      ),
      _LeftNavDrawerItem(
        icon: Icons.settings_outlined,
        title: LocaleKeys.drawer_settings.tr(context: context),
      ),
    ];
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: _outerHorizontalPadding),
      itemBuilder: (_, int index) => items[index],
      itemCount: items.length,
    );
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
    const double height = 44;
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular((height / 2).r),
      ),
      child: Container(
        height: height.h,
        padding: EdgeInsets.symmetric(
          horizontal: _innerHorizontalPadding,
        ),
        child: Row(
          children: <Widget>[
            Icon(icon, size: 16.sp),
            SizedBox(width: _innerHorizontalPadding),
            Text(
              title,
              style: TextStyle(fontSize: 14.sp),
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
