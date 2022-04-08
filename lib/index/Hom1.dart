import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/natwortking/login.dart';

class Home1 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: SizedBox(
                height: 200,
                child: Image.network('http://lottery.plazagold.com/images/lottery_show.jpg'),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}