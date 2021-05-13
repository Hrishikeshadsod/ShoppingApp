import 'package:flutter/material.dart';
import 'file:///C:/Users/Shree/AndroidStudioProjects/ShoppingApp/lib/Screens/front_page/reccommendedlist.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HorizontalList.dart';
import 'ReusableCard.dart';

class Front_page extends StatefulWidget {
  @override
  _Front_pageState createState() => _Front_pageState();
}

class _Front_pageState extends State<Front_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      tag: "Coats",
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      tag: "Dresses",
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      tag: "Jersey",
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      tag: "Pants",
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 15,
              child: MyList(),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:<Widget> [
                    Text(
                      'Recommended for you',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),),
            Expanded(
              flex: 8,
              child: PhotoList(),
            ),
          ],
        ),
      ),
    );
  }
}
