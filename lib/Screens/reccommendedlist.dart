import 'package:flutter/material.dart';

class PhotoList extends StatefulWidget {
  @override
  _PhotoListState createState() => _PhotoListState();
}

class _PhotoListState extends State<PhotoList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: SizedBox(
        height: 250.0,
        child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                InkWell(child: Image.asset('images/brown-coat.jpg',width: 200,alignment: Alignment.topCenter,),onTap: () {},),
                InkWell(child: Image.asset('images/pink-coat.jpg',width: 200,alignment: Alignment.topCenter,),onTap: () {},),
                InkWell(child: Image.asset('images/coat.jpg',width: 200,alignment: Alignment.topCenter,),onTap: () {},),
                InkWell(child: Image.asset('images/woolen-coat.jpg',width: 200,alignment: Alignment.topCenter,),onTap: () {},),
                InkWell(child: Image.asset('images/green-coat.jpg',width: 200,alignment: Alignment.topCenter,),onTap: () {},),
              ],
            ),
      ),
    );
  }
}
