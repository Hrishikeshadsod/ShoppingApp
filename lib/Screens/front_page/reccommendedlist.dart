import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'front_page.dart';

class PhotoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,

        children: <Widget>[
          MyListView(
            img_location: "images/brown-coat.jpg",

          ),
          MyListView(
            img_location: 'images/pink-coat.jpg',

          ),
          MyListView(
            img_location: 'images/coat.jpg',

          ),
          MyListView(
            img_location: 'images/woolen-coat.jpg',

          ),
          MyListView(
            img_location: 'images/green-coat.jpg',

          ),

        ],

    );
  }
}

class MyListView extends StatefulWidget {
  final String img_location;

  MyListView({this.img_location});

  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          title: Image.asset(widget.img_location),
        ),
      ),
    );
  }
}
