import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginApi.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'api/natwortking/updateApi.dart';

class updateApi extends StatefulWidget {
  const updateApi({Key? key}) : super(key: key);

  @override
  State<updateApi> createState() => _updateApiState();
}

class _updateApiState extends State<updateApi> {
  String name = "";
  String pass = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'อัตเดต',
        ),
        elevation: 0,
        backgroundColor: Colors.lightBlue[300],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text('ใส้Emailของคุณ'),
                  Text(
                    'อีเมล',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextFormField(
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(labelText: "อีเมล")),
                  SizedBox(
                    height: 15,
                  ),
                    Text('Name ที่ต้องการเปลี่ยน เเละ รหัสผ่าน'),
                  TextFormField(
                      onChanged: (value) {
                        name = value;
                      },
                      validator: RequiredValidator(errorText: 'กรุณาป้อนชื่อ'),
                      decoration: InputDecoration(labelText: "ชื่อ")),
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
                    validator:
                        RequiredValidator(errorText: 'กรุณาป้อน Password'),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () async {
                          User? update =
                              await User.checkLogin(name, pass, email);
                          if (email != "") {
                            print("GO");
                            await showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: Text(''),
                                      backgroundColor: Colors.pink[50],
                                      content: Text(
                                        '  เเก้ไขเเล้วเด้อ ',
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
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          potScreen()));
                                            }),
                                      ],
                                    ));
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
                                        '  ERROR ',
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
          ),
        ),
      ),
    );
  }
}
