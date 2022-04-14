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
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
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
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name :  ",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      user.username,
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email : ",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      user.email,
                      style: TextStyle(fontSize: 30),
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
                    width: 180,
                    child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => deleteApi()));
                        },
                        icon: Icon(Icons.delete),
                        style: ElevatedButton.styleFrom(
                              primary: Colors.yellow[800],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                              )),
                        label: Text(
                          'Delete User',
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
                              primary: Colors.yellow[800],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(20.0),
                              )),
                        label: Text(
                          'Log out',
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
