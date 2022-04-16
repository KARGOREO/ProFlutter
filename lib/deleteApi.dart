import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginApi.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'api/natwortking/deleteApi.dart';

class deleteApi extends StatefulWidget {
  const deleteApi({Key? key}) : super(key: key);

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
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.red[900],
          ),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0,
        backgroundColor: Colors.red[50],
      ),
      backgroundColor: Colors.red[50],
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Form(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'DELETE',
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    Image.asset(
                      'images/13.png',
                      height: 250,
                    ),
                    // SizedBox(
                    //   height: 15,
                    // ),
                    TextFormField(
                      onChanged: (value) {
                        email = value;
                      },
                      validator: RequiredValidator(errorText: 'กรุณาป้อนEmail'),
                      decoration: InputDecoration(labelText: "อีเมล"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                        onChanged: (value) {
                          pass = value;
                        },
                        validator:
                            RequiredValidator(errorText: 'กรุณาป้อนรหัสผ่าน'),
                        decoration: InputDecoration(labelText: "รหัสผ่าน")),
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
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        title: Text(''),
                                        backgroundColor: Colors.pink[50],
                                        content: Text(
                                          '  ใส่ email ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
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
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        title: Text(''),
                                        backgroundColor: Colors.pink[50],
                                        content: Text(
                                          '  ใส่ passwode ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
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
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                        title: Text(''),
                                        backgroundColor: Colors.pink[50],
                                        content: Text(
                                          '  ลบเเล้ว ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                              child: Text('Close'),
                                              style: TextButton.styleFrom(
                                                primary: Colors.white,
                                                backgroundColor: Colors.blue,
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            potScreen()));
                                              }),
                                        ],
                                      ));
                            }
                          },
                          icon: Icon(Icons.delete),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red[800],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              )),
                          label: Text(
                            'ลบข้อมูล',
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
