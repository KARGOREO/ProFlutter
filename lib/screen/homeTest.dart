import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatelessWidget {
  List<String> _options=[
    "HOME","CART","MENU","SETTINGS","FAVORITES"
  ];
  int _currentIndex=0;


  

  @override
  Widget build(BuildContext context) {
     return Scaffold(
    
      body: Container(
        color: Colors.red,
        child: Center(
            child: Text(_options[_currentIndex],
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
        )),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.red,
        
       
        items: <Widget>[
          Icon(Icons.home,color: Colors.red,),
          Icon(Icons.home,color: Colors.red,),
          Icon(Icons.home,color: Colors.red,),
          Icon(Icons.settings,color: Colors.red,),
          Icon(Icons.favorite,color: Colors.red,),

        ],
        onTap: (index){
          setState() {
            _currentIndex=index;
          }
        },
      ),
    );

  }
}
