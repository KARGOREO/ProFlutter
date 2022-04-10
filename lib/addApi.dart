import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

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
      body: Container(
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
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value) {
                    name = value;
                  },
                  decoration: InputDecoration(labelText: "ชื่อ"),
                  validator: RequiredValidator(errorText: 'กรุณาป้อนชื่อ'),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(labelText: "อีเมล"),
                  validator: RequiredValidator(errorText: 'กรุณาป้อนอีเมล'),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  onChanged: (value) {
                    pass = value;
                  },
                  decoration: InputDecoration(labelText: "รหัสผ่าน"),
                  validator: RequiredValidator(errorText: 'กรุณาป้อนรหัสผ่าน'),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      onPressed: () async {},
                      icon: Icon(Icons.app_registration_rounded),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddApi()));
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
    );
  }
}
