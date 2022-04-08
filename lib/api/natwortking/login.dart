import 'dart:convert';

import 'package:flutter_application_1/api/natwortking/natwordking.dart';





class User {
  final int userID;
  final String username;
  final String email;
 

  User({
    required this.userID,
    required this.username,
    required this.email,
  
  });

  static Future<User?> checkLogin(String name, String pass,String email) async {
    NetworkHelper networkHelper = NetworkHelper('my_store/api.php', {});
    var json = await networkHelper.postData(jsonEncode(<String, String>{
      'users_name': name,
      'users_pass': pass,
      'users_email':email,
      
    }));
    if (json != null && json['error'] == false) {
      Map<String, dynamic> u = json['user'];
      User user = User(
        userID: int.parse(u["users_id"]),
        username: u["users_name"], 
        email: u["users_email"],
    
        
      );
      return user;
    }
    return null;
  }
}
