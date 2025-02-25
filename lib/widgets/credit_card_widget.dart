import 'package:financial_bank/const/const.dart';
import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: Const.screenHeight(context) * 0.25,
        width: Const.screenWidth(context) * 0.9,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.orange,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 16,
                        left: 16,
                        child: Image.asset(
                          "assets/images/credit-card.png",
                          height: 40,
                          color: Colors.white,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 70,
                        child: Image.asset(
                          "assets/images/wifi.png",
                          height: 50,
                          color: Colors.white,
                        ),
                      ),
                      const Positioned(
                        bottom: 16,
                        left: 16,
                        child: Text(
                          "**** **** **** 1990",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: const Color.fromARGB(134, 255, 153, 0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$10,250.00',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor:
                                  Colors.white.withValues(alpha: 0.8),
                            ),
                            Transform.translate(
                              offset: const Offset(-10, 0),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor:
                                    Colors.white.withValues(alpha: 0.8),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
