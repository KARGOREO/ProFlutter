import 'package:flutter/material.dart';
import 'package:flutter_application_1/addApi.dart';
import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/index/Hom1.dart';
import 'package:flutter_application_1/profileApi.dart';

class Home extends StatelessWidget {
 final User user;
  const Home(this.user);
  

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: TabBarView(
            children: [
              Home1(),
              ProfileApi(user),
              // Test4(),
              // Horoscope(),
            ],
          ),
          backgroundColor: Colors.pink,
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "โปรไฟล์",
              ),
              // Tab(
              //   text: "เลขเด็ด",
              // ),
              // Tab(
              //   text: "ดวงความรัก ",
              // ),
            ],
          ),
        ));
  }
}