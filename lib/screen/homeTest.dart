import 'package:flutter/material.dart';

import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/index/Hom1.dart';
import 'package:flutter_application_1/index/home2.dart';

import 'package:flutter_application_1/screen/HomeTestGG.dart';

class HomeScreen extends StatelessWidget {
  final User user;
  const HomeScreen(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeGG(user),
      body: Body(),
      backgroundColor: Color.fromARGB(255, 141, 196, 241),
    );
  }
}
