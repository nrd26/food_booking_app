import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
        Container(
          // margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage('assets/ad1.jpg')
            )
          ),
        ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: AssetImage('assets/ad2.jpg')
                )
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: AssetImage('assets/ad3.jpg')
                )
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: AssetImage('assets/ad4.jpg')
                )
            ),
          ),
          Container(
            margin: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: AssetImage('assets/ad5.jpg')
                )
            ),
          ),


    ],
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
    )
    );
  }
}
