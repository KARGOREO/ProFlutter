import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/natwortking/lotto.dart';
import 'package:flutter_application_1/index/search.dart';
import 'package:flutter_application_1/screen/home.dart';

class LottoTest extends StatelessWidget {
  final User lotto;
  const LottoTest(this.lotto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 231, 209, 8),
        title: Text("ดีใจนำเด้อ"),
      ),
      backgroundColor: Color.fromARGB(255, 197, 231, 245),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
         
            SizedBox(
                  height: 170,
                  child: Image.network(
                      'https://i.pinimg.com/originals/ca/61/4d/ca614ddd40ae9018fea94a169611f68e.gif'),
                ),
            
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "ผลสลากกินเเบ่งรัฐบาล",
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        "              ประจำวันที่   ",
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        lotto.date,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lotto.name,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lotto.number,
                        style: TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "เงินรางวัล ",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        lotto.reward,
                        style: TextStyle(fontSize: 50),
                      ),
                   
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                      Text(
                        "บาท ",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
