import 'package:flutter/material.dart';

import 'package:flutter_application_1/LoginApi.dart';
import 'package:flutter_application_1/addApi.dart';
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
      home: Horoscope(),
    );
  }
}
