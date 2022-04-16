import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/test2.jpg"),fit: BoxFit.cover)
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("ผลรางวัลสลากกินแบ่งรัฐบาล",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.red.shade400),),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    height: 200,
                    child: Image.network(
                        'http://lottery.plazagold.com/images/lottery_show.jpg'),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("ราคาตลาดทอง",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.yellow.shade500),),
                        SizedBox(
                          height: 200,
                          child: Image.network(
                              'http://goldprice.plazagold.com/images/goldprice-today.jpeg'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}