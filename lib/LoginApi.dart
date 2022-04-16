import 'package:flutter/material.dart';
import 'package:flutter_application_1/addApi.dart';
import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/screen/HomeTest.dart';
import 'package:flutter_application_1/screen/HomeTestGG.dart';

import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/index/Hom1.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/profileApi.dart';
import 'package:flutter_application_1/update.dart';

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
      backgroundColor: Colors.amber[50],
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: const EdgeInsets.all(25),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/1.png',
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
                      onChanged: (value) {
                        email = value;
                      },
                      validator: RequiredValidator(errorText: 'กรุณาป้อนEmail'),
                      decoration: InputDecoration(
                        labelText: "อีเมล",
                        icon: Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 205, 155, 4),
                        ),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onChanged: (value) {
                      pass = value;
                    },
                    obscureText: true,
                    validator:
                        RequiredValidator(errorText: 'กรุณาป้อน Password'),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "รหัสผ่าน",
                      icon: Icon(
                        Icons.lock,
                         color: Color.fromARGB(255, 205, 155, 4),
                      ),
                    ),
                  ),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home(u)));
                          } else if (email == "") {
                            print("ว่าง");
                            await showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: Text(''),
                                      backgroundColor: Colors.pink[50],
                                      content: Text(
                                        '  ใส่ email ',
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
                                        '  ใส่ passwode ',
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
                                        'ยังบ่ไม่สมัคร',
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
                            primary: Color.fromARGB(255, 209, 160, 0),
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
                        // SizedBox(
                        //   width: 10,
                        // ),
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
                                        builder: (context) => updateApi()));
                              },
                              icon: Icon(Icons.pending),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.blueGrey,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddApi()));
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
      ),
    );
  }
}
