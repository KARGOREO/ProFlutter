import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/natwortking/login.dart';

class ProfileApi extends StatelessWidget {
  final User user;
  const ProfileApi(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.username,style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            
            ),
            Padding(padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.email,style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            
            ),
            
          ],
        ),
      ),
    );
  }
}