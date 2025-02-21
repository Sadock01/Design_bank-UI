import 'package:financial_bank/const/const.dart';
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
          style: Theme.of(context).textTheme.labelLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          "Espace Virements",
          style: Theme.of(context).textTheme.labelSmall!.copyWith(
                color: Colors.black54,
              ),
        ),SizedBox(height: Const.screenHeight(context)*0.12),
    
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            
            children: [
                  Text(
          "Beneficiaires",
          style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold),
        ),SizedBox(height: 12),
              SizedBox(
                height: 50,
                width: Const.screenWidth(context)*0.75,
                child: ElevatedButton(
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
                        ),SizedBox(width: 10),
                        Text(
                          "Ajouter un bénéficiaire",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(color: Colors.white),
                        )
                      ],
                    )),
              ),SizedBox(height: 15),
              SizedBox(
                 width: Const.screenWidth(context)*0.75,
                 height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
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
                        
                        ),SizedBox(width: 10),
                        Text(
                          "Gérer les bénéficiaires",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall,
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),SizedBox(height: Const.screenHeight(context)*0.1),
        Text(
          "Effectuer un virement",
          style: Theme.of(context).textTheme.labelMedium!.copyWith(fontWeight: FontWeight.bold),
        ),SizedBox(height: 15),
        Column(
       
          children: [
            TransactionOptionWidget(
                leading: Icon(
                  Icons.bolt,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: "Virement Instantané",
                subtitle: "Virement réalisé instantanément"),SizedBox(height: 5),
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
