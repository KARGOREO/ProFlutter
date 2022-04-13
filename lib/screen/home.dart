import 'package:flutter/material.dart';
import 'package:flutter_application_1/Horoscope/Horoscope.dart';
import 'package:flutter_application_1/Horoscope/daily.dart';

import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/index/Hom1.dart';

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
      Search(),
      Horoscope(),
      ProfileApi(user),
    ];
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              Home1(),
              Search(),
              Horoscope(),
              ProfileApi(user),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 244, 212, 142),
          bottomNavigationBar: TabBar(
            tabs: [
              Icon(
                Icons.home,
                color: Color.fromARGB(255, 240, 84, 133),
                size: 40,
              ),
              Icon(
                Icons.search,
                color: Color.fromARGB(255, 240, 84, 133),
                size: 40,
              ),
              Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 240, 84, 133),
                size: 40,
              ),
              Icon(
                Icons.person,
                color: Color.fromARGB(255, 240, 84, 133),
                size: 40,
              ),
            ],
          ),
        ));
  }
}
