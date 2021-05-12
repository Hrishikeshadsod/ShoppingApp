import 'package:flutter/material.dart';
import 'front_page.dart';
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      child: ListView(
        scrollDirection:Axis.horizontal,
      children:<Widget>[
        MyListView(
          img_location:'images/1.JPG',
          img_caption:'White Coat',
        ),
        MyListView(
          img_location:'images/2.JPG',
          img_caption:'Winter Coat',
        ),
        MyListView(
          img_location:'images/3.JPG',
          img_caption:'Rain Coat',
        ),
        MyListView(
          img_location:'images/3.JPG',
          img_caption:'Rain Coat',
        ),
      ],
    ),
    );
  }
}
class MyListView extends StatelessWidget {
  final String img_location;
  final String img_caption;
  MyListView({this.img_location,this.img_caption});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: InkWell(
        onTap:(){},
        child: ListTile(
          title:Image.asset(img_location) ,
          subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(img_caption),),
        ),
      ),
    );
  }
}
