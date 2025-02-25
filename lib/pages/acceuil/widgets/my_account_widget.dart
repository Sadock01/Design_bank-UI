import 'package:financial_bank/const/const.dart';
import 'package:flutter/material.dart';

class MyAccountWidget extends StatefulWidget {
  const MyAccountWidget({super.key});

  @override
  State<MyAccountWidget> createState() => _MyAccountWidgetState();
}

class _MyAccountWidgetState extends State<MyAccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: Const.screenWidth(context),
      height: Const.screenHeight(context) * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50)),
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 65,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile_collab.jpg'),
                  ),
                ),
              ),
              // SizedBox(width: 10),
              // Row(
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           "Hi! John Smith",
              //           style: Theme.of(context).textTheme.labelSmall,
              //         ),
              //         Text(
              //           "Good Evening",
              //           style: Theme.of(context)
              //               .textTheme
              //               .labelSmall!
              //               .copyWith(fontWeight: FontWeight.bold),
              //         ),
              //         SizedBox(height: 10),
              //       ],
              //     )
              //   ],
              // )
            ],
          ),
          Text(
            "3005\$",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Solde du compte",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Icon(Icons.arrow_drop_down_outlined)
            ],
          ),
        ],
      ),
    );
  }
}
