import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_booking_app/home.dart';
import 'package:food_booking_app/item.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = <Widget>[
    Home(),
    Item(),
    Text(
      'Index 2',

    ),
    Text(
      'Index 3',

    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
              text: TextSpan(
                text: "Fo",
                style: TextStyle(
                  color: Colors.redAccent[400],
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Bo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                        fontStyle: FontStyle.italic
                    )
                  )
                ]
              ),

          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.comment),
              tooltip: 'Comment Icon',
              onPressed: (){}
              )
        ],
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){}
        ),
      ),
      body: Center(
        child: _children.elementAt(_currentIndex),
    ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.redAccent[400],
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
           BottomNavigationBarItem(
            icon:  Icon(Icons.fastfood),
            label: "Your Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label:"Explore"
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.person),
            label:"Profile"
          )
        ],
      ),
    );
  }
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}



