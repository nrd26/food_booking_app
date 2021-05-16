import 'package:flutter/material.dart';
import 'category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: 60.0,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CategoryItem(
              title: "Combo Meal",
              isActive: true,
              press: () {},
            ),
            CategoryItem(
              title: "Beverages",
              press: () {},
            ),
            CategoryItem(
              title: "Salads",
              press: () {},
            ),
            CategoryItem(
              title: "Deserts",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}