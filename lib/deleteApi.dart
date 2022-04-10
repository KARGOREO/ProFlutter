import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginApi.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'api/natwortking/deleteApi.dart';

class deleteApi extends StatefulWidget {
  const deleteApi({ Key? key }) : super(key: key);

  @override
  State<deleteApi> createState() => _deleteApiState();
}

class _deleteApiState extends State<deleteApi> {
  
  String name = "";
  String pass = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 244, 249),
      
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
                        if (email == "") {
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
                                      '  ลบเเล้ว ',
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
                                  
                                             Navigator.push(context,
                              MaterialPageRoute(builder: (context) => potScreen()));
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
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}