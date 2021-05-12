import 'package:flutter/material.dart';
import 'package:shopping/Screens/reccommendedlist.dart';

import 'HorizontalList.dart';
class Front_page extends StatefulWidget {
  @override
  _Front_pageState createState() => _Front_pageState();
}

class _Front_pageState extends State<Front_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
              children: <Widget>[
                  Text('My List',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
                MyList(),
                Text('Recommended for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,),),
                Text(''),
                PhotoList(),
              ],
            ),


    );
  }
}
