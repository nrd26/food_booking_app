import 'package:flutter/material.dart';
import 'item_details.dart';
import 'book_now.dart';
class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor:Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.redAccent[400],
      //   leading: IconButton(
      //       icon: Icon(Icons.arrow_back),
      //       onPressed: (){},
      //   ),
      //   actions: <Widget>[
      //     IconButton(icon: Icon(Icons.share), onPressed: (){}),
      //     IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
      //   ],
      // ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Image.asset('assets/burger.jpg',
              height: 280.0,
              fit: BoxFit.fill,
              width: double.infinity,
            ),
          ),
          Expanded(child: ItemInfo())
        ],
      )
    );
  }
}
class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(

      // padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        // color: Colors.black87,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "MacDonalds"),
          TitlePriceRating(
            name: "Double Cheese Burger",
            numOfReviews: 24,
            rating: 4,
            price: 15,
            onRatingChanged: (value) {},
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Text(
              "A tasty double cheese burger fit for a king, made by the best fast food restaurant in town",
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        // Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10)),
        // Icon(
        //   Icons.location_on,
        //   color: Colors.white,
        // ),
        // SizedBox(width: 10),
        // Text(name),
      ],
    );
  }
}