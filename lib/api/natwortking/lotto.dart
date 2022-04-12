import 'dart:convert';

import 'package:flutter_application_1/api/natwortking/natwordking.dart';





class User {
  final String name;
  final String reward;
  final String amount;
  final String number;
  final String date;
 

  User({
    required this.name,
   required this.reward,
   required this.amount,
   required this.number,
   required this.date,
  
  });

  static Future<User?> checkLogin(String number,String date ) async {
    NetworkHelper networkHelper = NetworkHelper('my_app/lotto.php', {});
    var json = await networkHelper.postData(jsonEncode(<String, String>{
     'lotto_number': number,
     'lotto_date': date,
      
      
    }));
    if (json != null && json['error'] == false) {
      Map<String, dynamic> u = json['user'];
      User lotto = User(
        number: u["lotto_number"],
        name: u["lotto_name"],
        reward: u["lotto_reward"],
        date: u["lotto_date"],
        amount: u["lotto_amount"],

        
        
      

    
        
      );
      return lotto;
    }
    return null;
  }
}
