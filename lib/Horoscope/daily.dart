import 'package:flutter/material.dart';

class Horoscope2 extends StatelessWidget {
  const Horoscope2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[50],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          elevation: 0,
          backgroundColor: Colors.amber[50],
          title: Text(
            "ดูดวงรายวัน",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView());
  }
}
