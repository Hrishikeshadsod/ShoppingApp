import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'front_page.dart';
import 'ImageList.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ListView(
      scrollDirection: Axis.horizontal,
      
        children: <Widget>[
          MyListView(
            img_location: "images/winter_wear/D1.jpeg",
            img_caption: 'Black Coat',
            img_price: "\$80",
          ),
          MyListView(
            img_location: 'images/winter_wear/D2.jpeg',
            img_caption: 'Winter Coat',
            img_price: "\$80",
          ),
          MyListView(
            img_location: 'images/winter_wear/D3.jpeg',
            img_caption: 'Pink Coat',
            img_price: "\$80",
          ),
          MyListView(
            img_location: 'images/normal_wear/1A.jpeg',
            img_caption: 'Black Dress',
            img_price: "\$80",
          ),
          MyListView(
            img_location: 'images/normal_wear/1B.jpeg',
            img_caption: 'Brown Dress',
            img_price: "\$80",
          ),
          MyListView(
            img_location: 'images/normal_wear/B1.jpeg',
            img_caption: 'Black Top',
            img_price: "\$50",
          ),
          MyListView(
            img_location: 'images/normal_wear/C1.jpeg',
            img_caption: 'Jeans wear',
            img_price: "\$120",
          ),
        ],

    );
  }
}

class MyListView extends StatelessWidget {
  final String img_location;
  final String img_caption;
  final String img_price;
  MyListView({this.img_location, this.img_caption, this.img_price});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      //height: 1000,
      child: InkWell(
        onTap: () {},
        child: ListTile(

          title: Image.asset(img_location),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex:5,
                  child: Text(
                    img_caption,
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: SizedBox(),
                ),
                Expanded(
                  flex:2,child: Text(
                  img_price,
                  style: GoogleFonts.quicksand(
                    textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
