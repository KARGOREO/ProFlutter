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
      appBar: AppBar(title: Text('')),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'name',
                  style: TextStyle(fontSize: 20),
                ),
                
                TextFormField(
                  onChanged: (value) {
                    name = value;
                  },
                 
                ),
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
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      onPressed: () async {},
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
    );
  }
}
