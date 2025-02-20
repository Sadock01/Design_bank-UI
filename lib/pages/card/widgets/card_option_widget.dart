import 'package:financial_bank/const/const.dart';
import 'package:flutter/material.dart';

class CardOptionWidget extends StatelessWidget {
  const CardOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Const.screenHeight(context) * 0.07,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary)),
                child: Icon(
                  Icons.lock_clock_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary)),
                child: Icon(
                  Icons.visibility_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
