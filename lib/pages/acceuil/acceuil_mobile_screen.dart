import 'package:financial_bank/widgets/credit_card_widget.dart';
import 'package:flutter/material.dart';

class AcceuilMobileScreen extends StatefulWidget {
  const AcceuilMobileScreen({super.key});

  @override
  State<AcceuilMobileScreen> createState() => _AcceuilMobileScreenState();
}

class _AcceuilMobileScreenState extends State<AcceuilMobileScreen> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
            bottom: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      const Column(
                          mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back!",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Anabella Angela ",
                            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton.outlined(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 167),
                        color: Colors.white,
                        child: const Column(
                           mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 110),
                            
                            // TransactionList()
                          ],
                        ),
                      ),
                      const Positioned(
                        top: 20,
                        left: 25,
                        right: 25,
                        child: CreditCardWidget()
                      )
                    ],
                  ),
                )
              ],
            ),
          );
    
  }
}