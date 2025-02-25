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
    return Stack(
      children: [
        Container(
          // margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          width: Const.screenWidth(context) * 0.9,
          height: Const.screenHeight(context) * 0.3,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                spreadRadius: 0.1,
                blurRadius: 0.1,
                color: Colors.grey.withValues(alpha: 0.5))
          ], borderRadius: BorderRadius.circular(20), color: Theme.of(context).colorScheme.primary),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text(
          //           "Solde du compte",
          //           style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.black),
          //         ),
          //     Text(
          //       "3005\$",
          //       style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 55,
          //           color: Colors.black),
          //     ),
          //     Row(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         Text(
          //           "Solde du compte",
          //           style: Theme.of(context).textTheme.labelSmall,
          //         ),
          //         Icon(Icons.arrow_drop_down_outlined)
          //       ],
          //     ),
          //   ],
          // ),
        ),
        Positioned(
            top: Const.screenHeight(context) * 0.26,
            left: Const.screenWidth(context) * 0.23,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: Const.screenWidth(context) * 0.25,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color:Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.visibility,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Masquer",
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: Const.screenWidth(context) * 0.25,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.credit_card,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "card",
                        style: Theme.of(context).textTheme.labelSmall,
                      )
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
