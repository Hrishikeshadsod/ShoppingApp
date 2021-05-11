import 'package:flutter/material.dart';

import 'HorizontalList.dart';
class Front_page extends StatefulWidget {
  @override
  _Front_pageState createState() => _Front_pageState();
}

class _Front_pageState extends State<Front_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(20),
          child: Text('My List',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),),
          MyList(),
        ],
      ),
    );
  }
}
