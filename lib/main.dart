import 'package:flutter/material.dart';

import 'package:flutter_application_1/LoginApi.dart';
<<<<<<< HEAD
=======
import 'package:flutter_application_1/screen/home.dart';
>>>>>>> 24710be28fd0bf185ffe0b1c0f9b03f811812942
import 'package:flutter_application_1/index/Hom1.dart';
import 'package:flutter_application_1/index/Horoscope.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: potScreen(),
    );
  }
}
