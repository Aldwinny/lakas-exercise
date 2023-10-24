import 'package:flutter/material.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile(
      {super.key,
      this.leading,
      this.trailing,
      this.title,
      this.onTap,
      this.color});

  final Widget? leading;
  final Widget? trailing;
  final Widget? title;
  final Color? color;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      splashFactory: InkRipple.splashFactory,
      splashColor: color ?? Colors.pink[100],
      focusColor: color ?? Colors.pink[100],
      hoverColor: color ?? Colors.pink[50],
      highlightColor: color ?? Colors.pink[100],
      child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
          leading: leading,
          trailing: trailing,
          title: title),
    );
  }
}
