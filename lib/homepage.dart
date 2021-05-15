import 'package:flutter/material.dart';
import 'placeholder_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(),
    PlaceholderWidget(),
    PlaceholderWidget(),
    PlaceholderWidget()
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
                  color: Colors.lightBlueAccent,
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

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Text("Add the following:",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
              ),
              Text("1. Search",
              style: TextStyle(
                    fontSize: 20
                ),
              ),
              Text("2. Carousel(coupons, meal discounts, newest and other offers)",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              Text("3. Tabs for Combos, cuisines",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            ]

          )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.lightBlueAccent,
        unselectedItemColor: Colors.white,
        items:[
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
          ),
          BottomNavigationBarItem(
            icon:  new Icon(Icons.fastfood),
            title: new Text("Your Order"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.explore),
            title: new Text("Explore")
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text("Profile")
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
