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
   int items=5;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20,bottom: 20,top: 40,),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  flex:3,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex:1,

                        child: CircleAvatar(
                          radius:30,
                          backgroundImage:AssetImage("images/ref.jpg"),
                        ),
                      ),
                      Expanded(
                        flex:4,
                        child:SizedBox(),),
                      Expanded(
                        flex:2,
                        child:Stack(
                          alignment: Alignment.topRight,
                          children:<Widget> [
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.black,
                              size:40,
                            ),
                            Positioned(child: CircleAvatar(
                              radius:10,
                              backgroundColor:Color(0XFFFAE1E5),
                              child: Text( items.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),),
                            ),

                          ],
                        ),),
                    ],
                  ),),
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
                  flex: 20,
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
                  flex:18,
                  child: PhotoList(),
                ),

              ],
            ),
            Positioned(child:GestureDetector(
              onTap: (){},
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width* 0.22,
                decoration: BoxDecoration(
                  color: Color(0XFF343334),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),),
          ],
        ),
      ),
    );
  }
}
