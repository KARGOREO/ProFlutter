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
        backgroundColor: Color.fromARGB(255, 233, 165, 30),
        title: Text("ดีใจนำเด้อ"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "วันที่:  ",
                        style: TextStyle(fontSize:20),
                      ),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "name : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      lotto.name,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "reward : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      lotto.reward,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "amount : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      lotto.amount,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "number : ",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      lotto.number,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}