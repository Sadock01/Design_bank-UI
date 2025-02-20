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
    return Scaffold(
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        shadowColor: Colors.black,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          children: List.generate(Const.bottomList.length, (index) {
            return Container(
              margin: index == 1 ? const EdgeInsets.only(right: 32) : null,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex == index;
                    content == Const.bottomList[index]["screen"];
                  });
                },
                icon: currentIndex == index
                    ? Const.bottomList[index]["active_icon"]
                    : Const.bottomList[index]["icon"],
              ),
            );
          }),
        ),
      ),
    );
  }
}
