import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/natwortking/login.dart';

class Home1 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Center(
                child: SizedBox(
                  height: 200,
                  child: Image.network('http://lottery.plazagold.com/images/lottery_show.jpg'),
                ),
              ),
              Center(
                child: SizedBox(
                  height: 200,
               
                  child: Image.network('http://goldprice.plazagold.com/images/goldprice-today.jpeg'),
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}