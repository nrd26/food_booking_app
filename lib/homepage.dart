import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_booking_app/carousel.dart';
// import 'package:food_booking_app/item_list.dart';
import 'package:food_booking_app/search.dart';
import 'package:food_booking_app/tabs.dart';
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

      body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Search(),
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Text(
                  'Offers and Discounts',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),

                ),
              ),

              Carousel(),
              CategoryList(),
              // ItemList()

            ]

          )

      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.redAccent[400],
        unselectedItemColor: Colors.white,
        items:[
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon:  new Icon(Icons.fastfood),
            label: "Your Order",
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.explore),
            label:"Explore"
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
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



// Text("Add the following:",
//   style: TextStyle(
//       fontWeight: FontWeight.bold,
//     fontSize: 24
//   ),
// ),
// Text("1. Search",
// style: TextStyle(
//       fontSize: 20
//   ),
// ),
// Text("2. Carousel(coupons, meal discounts, newest and other offers)",
//   style: TextStyle(
//       fontSize: 20
//   ),
// ),
// Text("3. Tabs for Combos, cuisines",
//   style: TextStyle(
//       fontSize: 20
//   ),
// ),