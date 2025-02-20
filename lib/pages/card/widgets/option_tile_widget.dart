import 'package:flutter/material.dart';

class OptionTileWidget extends StatelessWidget {
  const OptionTileWidget(
      {super.key,
      required this.leading,
      required this.subtitle,
      required this.title,
      required this.trailing});
  final Icon leading;
  final Icon trailing;
  final String subtitle;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(
        title,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
    );
  }
}
