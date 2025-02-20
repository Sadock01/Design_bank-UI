import 'package:financial_bank/pages/transaction/widgets/transaction_option_widget.dart';
import 'package:flutter/material.dart';

class TransactionMobileScreen extends StatefulWidget {
  const TransactionMobileScreen({super.key});

  @override
  State<TransactionMobileScreen> createState() =>
      _TransactionMobileScreenState();
}

class _TransactionMobileScreenState extends State<TransactionMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Monetis Bank",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          "Espace Virements",
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Colors.black54,
              ),
        ),
        Text(
          "Beneficiaires",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.person_add_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "Ajouter un bénéficiaire",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: Colors.white),
                    )
                  ],
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.group_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "Gérer les bénéficiaires",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: Colors.white),
                    )
                  ],
                )),
          ],
        ),
        Text(
          "Effectuer un virement",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Column(
          children: [
            TransactionOptionWidget(
                leading: Icon(
                  Icons.bolt,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: "Virement Instantané",
                subtitle: "Virement réalisé instantanément"),
            TransactionOptionWidget(
                leading: Icon(
                  Icons.schedule_outlined,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: "Virement Ponctuel",
                subtitle: "Virement réalisé suivant un delai")
          ],
        )
      ],
    );
  }
}
