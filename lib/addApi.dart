import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginApi.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'api/natwortking/addApi.dart';

class AddApi extends StatefulWidget {
  const AddApi({Key? key}) : super(key: key);

  @override
  State<AddApi> createState() => _AddApiState();
}

class _AddApiState extends State<AddApi> {
  String name = "";
  String pass = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('สมัครสมาชิก'),
        elevation: 0,
        backgroundColor: Colors.blueGrey,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/5.png',
                    height: 300,
                  ),
                  Text(
                    'Sing Up',
                    style: TextStyle(fontSize: 22),
                  ),
                  TextFormField(
                      onChanged: (value) {
                        name = value;
                      },
                      validator: RequiredValidator(errorText: 'กรุณาป้อนชื่อ'),
                      decoration: InputDecoration(labelText: "ชื่อ")),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                      onChanged: (value) {
                        email = value;
                      },
                      validator: RequiredValidator(errorText: 'กรุณาป้อนอีเมล'),
                      decoration: InputDecoration(labelText: "อีเมล")),
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
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                        onPressed: () async {
                          User? u = await User.checkLogin(name, pass, email);
                          if (u == null) {
                            print("GO");
                            await showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: Text(''),
                                      backgroundColor: Colors.pink[50],
                                      content: Text(
                                        '  สมัครเเล้วเด้อ ',
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
                            primary: Colors.blueGrey,
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            )),
                        label: Text(
                          'สมัครสมาชิก',
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'คุณมีบัญชีผู้ใช้แล้วใช่ไหม?',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => potScreen()));
                        }),
                        child: Text('เข้าสู่ระบบ'),
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
