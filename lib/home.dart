import 'package:flutter/material.dart';
import 'package:food_booking_app/carousel.dart';
import 'package:food_booking_app/carousel2.dart';
import 'package:food_booking_app/search.dart';
import 'package:food_booking_app/tabs.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
              Padding(padding: EdgeInsets.fromLTRB(0,30,0,0)),
              CategoryList(),
              Carousel2(),
              Padding(padding: EdgeInsets.fromLTRB(0,10,0,0)),
// ItemList()

            ]

        )

    );
  }
}
