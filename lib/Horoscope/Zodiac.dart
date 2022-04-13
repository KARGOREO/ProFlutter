import 'package:flutter/material.dart';

class Zodiac extends StatefulWidget {
  const Zodiac({Key? key}) : super(key: key);

  @override
  State<Zodiac> createState() => _ZodiacState();
}

class _ZodiacState extends State<Zodiac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Colors.lightBlue[900],
      ),
    );
  }
}
