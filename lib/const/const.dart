import 'package:financial_bank/pages/acceuil/acceuil_mobile_screen.dart';
import 'package:financial_bank/pages/card/card_mobile_screen.dart';
import 'package:financial_bank/pages/profile/profile_mobile_screen.dart';
import 'package:financial_bank/pages/transaction/transaction_mobile_screen.dart';
import 'package:flutter/material.dart';

class Const {
  static double screenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static double screenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }

  static List<Map<String, dynamic>> bottomList = [
    {
      'icon': Icon(Icons.home,color: Colors.black.withValues(alpha: 0.5)),
     'active_color': const Icon(Icons.home,color: Color.fromARGB(255, 255, 155, 0),),
     "screen": const AcceuilMobileScreen(),
     "label": "home"
    },
    {
      'icon': Icon(Icons.credit_card,color: Colors.black.withValues(alpha: 0.5)),
     'active_color': const Icon(Icons.credit_card,color: Color.fromARGB(255, 255, 155, 0),),
     "screen": const CardMobileScreen(),
     "label": "My Card"
    },
    {
      'icon': Icon(Icons.confirmation_num_outlined,color: Colors.black.withValues(alpha: 0.5)),
     'active_color': const Icon(Icons.settings,color: Color.fromARGB(255, 255, 155, 0),),
     "screen": const TransactionMobileScreen(),
     "label": "Transaction"
    },
    {
      'icon': Icon(Icons.person_2_outlined,color: Colors.black.withValues(alpha: 0.5)),
     'active_color': const Icon(Icons.person_2_outlined,color: Color.fromARGB(255, 255, 155, 0),),
     "screen": const ProfileMobileScreen(),
     "label": "Profile"
    }
  ];
}