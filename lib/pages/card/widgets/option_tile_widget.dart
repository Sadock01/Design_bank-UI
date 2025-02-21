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
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Theme.of(context).colorScheme.primary)),
      child: ListTile(
        leading: leading,
        title: Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        trailing: trailing,
      ),
    );
  }
}
