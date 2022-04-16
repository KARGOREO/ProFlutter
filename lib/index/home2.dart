import 'package:flutter/material.dart';
import 'package:flutter_application_1/index/Hom1.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Home1(),
        ],
      ),
    );
  }
}
