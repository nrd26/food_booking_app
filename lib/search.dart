import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Expanded(

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SearchBar(),
          ),


    );
  }
}
