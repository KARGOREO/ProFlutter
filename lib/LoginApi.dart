import 'package:flutter/material.dart';
import 'package:flutter_application_1/addApi.dart';
import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/home.dart';
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
      backgroundColor: Color.fromARGB(255, 241, 229, 204),
      
      body: Container(
        
        padding: const EdgeInsets.all(20),
        child: Form(
          child: SingleChildScrollView(
            
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               
                SizedBox(
                  height: 15,
                ),
                Text(
                  'email',
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  validator: RequiredValidator(errorText: 'กรุณาป้อนEmail'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'password',
                  style: TextStyle(fontSize: 20),
                ),
                TextFormField(
                  onChanged: (value) {
                    pass = value;
                  },
                  validator: RequiredValidator(errorText: 'กรุณาป้อน Password'),
                ),
                SizedBox(
                  height: 20,
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
                                    backgroundColor: Colors.pink[50],
                                    content: Text(
                                      '  ใส่ Name ',
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
                                      '  ยังบ่สมัคร ',
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
                          primary: Color.fromARGB(255, 209, 160, 0)),
                      label: Text(
                        'เข้าสู่ระบบ',
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
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
                                  primary: Color.fromARGB(255, 0, 185, 62)),
                              label: Text(
                                'สมัคร',
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                      ),
                      SizedBox(
                        width: 20,
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
                                primary: Color.fromARGB(255, 251, 0, 146)),
                            label: Text(
                              'เเก้ไข',
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
            
                    ],
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
