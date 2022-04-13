import 'package:flutter/material.dart';

class Horoscope2 extends StatelessWidget {
  const Horoscope2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {},
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.amber[50],
      //   title: Text(
      //     "ดูดวงรายวัน",
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: Stack(children: [
        Container(
          height: 300,
          width: 500,
          decoration: BoxDecoration(color: Colors.blue[100]),
        ),
        SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Align(
                  alignment: Alignment.topRight,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 3.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    icon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Expanded(
                  child: Card(
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('Card tapped.');
                  },
                  child: const SizedBox(
                    width: 300,
                    height: 100,
                    child: Text('A card that can be tapped'),
                  ),
                ),
              ))
            ],
          ),
        ))
      ]),
    );
  }
}
