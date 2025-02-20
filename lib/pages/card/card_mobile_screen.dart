import 'package:financial_bank/pages/card/widgets/card_option_widget.dart';
import 'package:financial_bank/pages/card/widgets/option_tile_widget.dart';
import 'package:financial_bank/widgets/credit_card_widget.dart';
import 'package:flutter/material.dart';

class CardMobileScreen extends StatefulWidget {
  const CardMobileScreen({super.key});

  @override
  State<CardMobileScreen> createState() => _CardMobileScreenState();
}

class _CardMobileScreenState extends State<CardMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          CreditCardWidget(),
          Text(
            "Virtuelle",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          SizedBox(height: 10),
          CardOptionWidget(),
          OptionTileWidget(
            leading: Icon(Icons.speed),
            subtitle: "Limites d'achat et de retraits quotidients",
            title: "Spending limits",
            trailing: Icon(Icons.arrow_forward_ios),
          ),OptionTileWidget(
            leading: Icon(Icons.settings_outlined),
            subtitle: "Utilisation de la carte",
            title: "Settings",
            trailing: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }
}
