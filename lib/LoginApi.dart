import 'package:flutter/material.dart';
import 'package:flutter_application_1/addApi.dart';
import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/index/Hom1.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/profileApi.dart';

import 'package:form_field_validator/form_field_validator.dart';
import 'package:http/http.dart' as http;

class potScreen extends StatefulWidget {
  @override
  State<potScreen> createState() => _potScreenState();
}

class _potScreenState extends State<potScreen> {
  String name = "";
  String pass = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'images/4.png',
                  height: 300,
                ),
                Text(
                  'Sing In',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "ชื่อ"),
                  onChanged: (value) {
                    name = value;
                  },
                  validator: MultiValidator([
                    RequiredValidator(errorText: 'กรุณาป้อนชื่อ'),
                  ]),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    onChanged: (value) {
                      email = value;
                    },
                    validator: RequiredValidator(errorText: 'กรุณาป้อนอีเมล'),
                    decoration: InputDecoration(labelText: "อีเมล")),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                    onChanged: (value) {
                      pass = value;
                    },
                    validator:
                        RequiredValidator(errorText: 'กรุณาป้อนรหัสผ่าน'),
                    decoration: InputDecoration(labelText: "รหัสผ่าน")),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      onPressed: () async {
                        User? u = await User.checkLogin(name, pass, email);
                        if (u != null) {
                          print("GO");
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home(u)));
                        } else if (name == "") {
                          print("ว่าง");
                          await showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: Text(''),
                                    backgroundColor: Colors.black,
                                    content: Text(
                                      'กรุณาใส่ชื่อ ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
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
                        } else if (email == "") {
                          print("ว่าง");
                          await showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: Text(''),
                                    backgroundColor: Colors.pink[50],
                                    content: Text(
                                      '  ใส่อีเมล ',
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
                        } else if (pass == "") {
                          print("ว่าง");
                          await showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: Text(''),
                                    backgroundColor: Colors.pink[50],
                                    content: Text(
                                      '  ใส่รหัสผ่าน ',
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
                                      'ยังไม่สมัคร',
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
                      icon: Icon(Icons.login),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.amber[600],
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          )),
                      label: Text(
                        'เข้าสู่ระบบ',
                        style: TextStyle(fontSize: 18),
                      )),
                ),
                Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: SizedBox(
                          width: 150,
                          child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddApi()));
                              },
                              icon: Icon(Icons.app_registration_outlined),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blueGrey,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
                                  )),
                              label: Text(
                                'สมัคร',
                                style: TextStyle(fontSize: 18),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AddApi()));
                            },
                            icon: Icon(Icons.pending),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueGrey,
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                )),
                            label: Text(
                              'เเก้ไข',
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'คุณยังไม่มีบัญชีผู้ใช้ใช่ไหม?',
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                      onPressed: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddApi()));
                      }),
                      child: Text('สมัครสมาชิก'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
