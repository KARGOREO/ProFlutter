import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Wrap(
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
              Wrap(
                children: [
                  Center(
                    child: SizedBox(
                      height:200,
                   
                      child: Image.network('https://www.matichon.co.th/wp-content/uploads/2022/04/%E0%B8%82%E0%B8%99%E0%B8%B2%E0%B8%94%E0%B9%80%E0%B8%A7%E0%B9%87%E0%B8%9A%E0%B8%82%E0%B8%B2%E0%B8%A2%E0%B8%AB%E0%B8%A7%E0%B8%A2.jpg'),
                    ),
                  ),
                  
                ],

              ),
              
            ],
          ),
        ),
      ),
      
    );
  }
}