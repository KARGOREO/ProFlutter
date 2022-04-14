import 'package:flutter/material.dart';
import 'package:flutter_application_1/Horoscope/daily.dart';

class Horoscope extends StatelessWidget {
  const Horoscope({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Image.asset(
                    'images/10.png',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ดูดวง ปี 2565 เจาะลึก 12 ราศี ',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Horoscope2()));
                        },
                        icon: Icon(Icons.arrow_right),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.pink[200],
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            )),
                        label: Text(
                          "ดูดวงรายวัน",
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
