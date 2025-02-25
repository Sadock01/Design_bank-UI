import 'package:flutter/material.dart';

class TransactionOptionWidget extends StatelessWidget {
  const TransactionOptionWidget(
      {super.key,
      required this.leading,
      required this.title,
      required this.subtitle});
  final Icon leading;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.5,
              blurRadius: 2,
            )
          ]),
      child: ListTile(
        trailing: Icon(
          Icons.arrow_forward,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelSmall),
        leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context)
                    .colorScheme
                    .primary
                    .withValues(alpha: 0.2)),
            child: leading),
      ),
    );
  }
}
