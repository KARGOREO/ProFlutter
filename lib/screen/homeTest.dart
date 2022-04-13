import 'package:flutter/material.dart';
import 'package:flutter_application_1/Horoscope/Horoscope.dart';
import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/screen/home.dart';

class HomeScreen extends StatelessWidget {
  final User user;
  const HomeScreen(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Home(user),
      body: Horoscope(),
    );
  }
}
