import 'package:flutter/material.dart';

import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/index/Hom1.dart';
import 'package:flutter_application_1/Horoscope/Horoscope.dart';
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
          backgroundColor: Colors.cyan[300],
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home_filled),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.account_circle_outlined),
                text: "โปรไฟล์",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "ค้นหา",
              ),
              Tab(
                icon: Icon(Icons.add_reaction_sharp),
                text: "ดูดวง ",
              ),
            ],
          ),
        ));
  }
}
