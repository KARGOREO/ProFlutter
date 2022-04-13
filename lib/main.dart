import 'package:flutter/material.dart';

import 'package:flutter_application_1/LoginApi.dart';
import 'package:flutter_application_1/index/search.dart';

import 'package:flutter_application_1/screen/home.dart';

import 'package:flutter_application_1/index/Hom1.dart';
import 'package:flutter_application_1/Horoscope/Horoscope.dart';

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
      home: potScreen(),
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
      body: Horoscope(),
    );
  }
}
