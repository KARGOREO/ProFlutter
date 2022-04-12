import 'package:flutter/material.dart';
import 'package:flutter_application_1/index/search.dart';

class Horoscope extends StatelessWidget {
  const Horoscope({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Image.asset(
                    'images/10.png',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ดูดวงความรัก ปี 2564 เจาะลึก 12 ราศี ',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_right),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pink[200],
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            )),
                        label: Text(
                          "ดูดวงความรักรายวัน",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                 
                ]),
          ),
        ),
      ),
    );
  }
}
