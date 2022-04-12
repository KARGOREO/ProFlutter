import 'package:flutter/material.dart';
import 'package:flutter_application_1/index/lottoTest.dart';

import '../api/natwortking/lotto.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String? date;

  String number = "";

  @override
  Widget build(BuildContext context) {
    final items = ['[1 เมษายน 2565]','[16 มีนาคม 2565]'];

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.green, width: 4)),
              child: DropdownButton<String>(
                value: date,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.black,
                ),
                isExpanded: true,
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => date = value),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'เลขเบอร์ของคุณ',
              style: TextStyle(fontSize: 20),
            ),
            TextFormField(
              onChanged: (value) {
                number = value;
              },
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                  onPressed: () async {
                    User? u = await User.checkLogin(number, date!);
                    if (u != null) {
                      print("GO");
                      Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LottoTest(u)));
                    } else if (number == "") {
                      print("ว่าง");
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text(''),
                                backgroundColor: Colors.pink[50],
                                content: Text(
                                  '  ใส่ เบอร์นำเเนะ ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                      child: Text('Close'),
                                      style: TextButton.styleFrom(
                                        primary: Colors.white,
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      }),
                                ],
                              ));
                    } else {
                      print("ว่าง");
                      await showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text(''),
                                backgroundColor: Colors.pink[50],
                                content: Text(
                                  '  เสียใจหลายๆเด้อ ',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                      child: Text('Close'),
                                      style: TextButton.styleFrom(
                                        primary: Colors.white,
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      }),
                                ],
                              ));
                    }
                  },
                  icon: Icon(Icons.app_registration_outlined),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 209, 160, 0)),
                  label: Text(
                    'ตกลง',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ));
}
