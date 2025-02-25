import 'dart:developer';

import 'package:financial_bank/const/const.dart';
import 'package:financial_bank/pages/acceuil/acceuil_mobile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget content = const AcceuilMobileScreen();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         
        body: Column(
          children: [content],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 10,
          shadowColor: Colors.black,
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(Const.bottomList.length, (index) {
              return Container(
                    
                margin: index == 1 ? const EdgeInsets.only(right: 32) : null,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 25,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            currentIndex = index;
                            log("Valeur de 'screen' pour index $index: ${Const.bottomList[index]["screen"]}");
                            
                            content = (Const.bottomList[index]["screen"] as Widget?) ??
                                const AcceuilMobileScreen(); 
                            log("Nouvel écran : $content");
                          });
                        },
                        icon: currentIndex == index
                            ? Const.bottomList[index]["active_icon"]
                            : Const.bottomList[index]["icon"],
                      ),
                    ),
                    Text(Const.bottomList[index]["label"],style: Theme.of(context).textTheme.labelSmall!.copyWith(overflow: TextOverflow.ellipsis),)
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
