import 'package:financial_bank/const/const.dart';
import 'package:financial_bank/pages/acceuil/widgets/my_account_widget.dart';

import 'package:flutter/material.dart';

class AcceuilMobileScreen extends StatefulWidget {
  const AcceuilMobileScreen({super.key});

  @override
  State<AcceuilMobileScreen> createState() => _AcceuilMobileScreenState();
}

class _AcceuilMobileScreenState extends State<AcceuilMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyAccountWidget(),
            SizedBox(height: 12),
            Text(
              "Historiques des transaction",
              style: Theme.of(context).textTheme.labelMedium,
            )
          ],
        ),
      ),
    );
  }
}
