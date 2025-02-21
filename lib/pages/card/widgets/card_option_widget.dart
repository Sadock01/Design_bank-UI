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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary)),
                child: Center(
                  child: Icon(
                    Icons.lock_clock_outlined,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Text(
                "Bloquer sa carte",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: Theme.of(context).colorScheme.primary),
              )
            ],
          ),
          SizedBox(width: 10),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary)),
                child: Icon(
                  Icons.visibility_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(
                  width: Const.screenWidth(context) * 0.22,
                  child: Text(
                    "Afficher les informations",
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        overflow: TextOverflow.ellipsis),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
