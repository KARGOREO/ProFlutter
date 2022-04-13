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
    final items = ['[1 เมษายน 2565]', '[16 มีนาคม 2565]'];

    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'images/12.png',
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "กรุณาเลือกงวดที่ออกรางวัล",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blue, width: 2)),
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
                  'หมายเลขสลากของคุณ',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 3.5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: TextFormField(
                    onChanged: (value) {
                      number = value;
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Search",
                      icon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                    // maxLength: 6,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                        onPressed: () async {
                          User? u = await User.checkLogin(number, date!);
                          if (u != null) {
                            print("GO");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LottoTest(u)));
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
                            primary: Colors.yellow[800],
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            )),
                        label: Text(
                          'ยืนยัน',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ),
              ],
            ),
          ),
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
