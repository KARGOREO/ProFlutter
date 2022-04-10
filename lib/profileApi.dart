import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginApi.dart';
import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/deleteApi.dart';

class ProfileApi extends StatelessWidget {
  final User user;
  const ProfileApi(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 200,
                child: Image.network(
                    'https://www.pngall.com/wp-content/uploads/5/Profile-Male-PNG.png'),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ชื่อ :  ",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      user.username,
                      style: TextStyle(fontSize: 50),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email : ",
                      style: TextStyle(fontSize: 40),
                    ),
                    Text(
                      user.email,
                      style: TextStyle(fontSize: 40),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(
              height: 180,
            ),
            Center(
              child: Wrap(
                children: [
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
                                  builder: (context) => deleteApi()));
                        },
                        icon: Icon(Icons.pending),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 251, 0, 146)),
                        label: Text(
                          'ลบ User',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => potScreen()));
                        },
                        icon: Icon(Icons.pending),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 251, 0, 146)),
                        label: Text(
                          'ออกจากระบบ',
                          style: TextStyle(fontSize: 20),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
