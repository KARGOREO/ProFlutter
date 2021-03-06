import 'package:flutter/material.dart';
import 'package:flutter_application_1/Horoscope/Horoscope.dart';

import 'package:flutter_application_1/api/natwortking/login.dart';
import 'package:flutter_application_1/index/Hom1.dart';

import 'package:flutter_application_1/index/search.dart';
import 'package:flutter_application_1/profileApi.dart';

class Home extends StatelessWidget {
  final User user;
  const Home(this.user);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          backgroundColor: Colors.grey,
          bottomNavigationBar: TabBar(
            tabs: [
              Icon(
                Icons.home,
                color: Colors.black,
                size: 30,
              ),
              Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              Icon(
                Icons.favorite,
                color: Colors.black,
                size: 30,
              ),
              Icon(
                Icons.person,
                color: Colors.black,
                size: 30,
              ),
            ],
          ),
        ));
  }
}
