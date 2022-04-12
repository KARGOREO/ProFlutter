import 'package:flutter/material.dart';

import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/index/Hom1.dart';
import 'package:flutter_application_1/index/Horoscope.dart';
import 'package:flutter_application_1/index/search.dart';
import 'package:flutter_application_1/profileApi.dart';

class Home extends StatelessWidget {
  final User user;
  const Home(this.user);

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    List<Widget> _pageWidget = <Widget>[
      Home1(),
      ProfileApi(user),
      Search(),
      Horoscope(),
    ];
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              Home1(),
              ProfileApi(user),
              Search(),
              Horoscope(),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 233, 152, 30),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "โปรไฟล์",
              ),
              Tab(
                text: "ค้นหา",
              ),
              Tab(
                text: "ดูดวง ",
              ),
            ],
          ),
        ));
  }
}
