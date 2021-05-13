import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Second_screen extends StatefulWidget {
  @override
  _Second_screenState createState() => _Second_screenState();
}

class _Second_screenState extends State<Second_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 700.0,
            child: Carousel(
              images: [
                AssetImage("images/winter_wear/E2.jpg",),
                AssetImage("images/winter_wear/E1.jpg",)
              ],
              dotSize: 5.0,
              dotSpacing: 15,
              animationCurve: Curves.easeInOut,
              dotVerticalPadding: 160.0,
              dotColor: Colors.white.withOpacity(0.4),
              dotBgColor: Colors.transparent,
              boxFit: BoxFit.cover,
              dotIncreaseSize: 1.1,
              dotIncreasedColor: Colors.white,
            ),
          ),
          // Image.asset("images/winter_wear/E2.jpg",
          // fit: BoxFit.cover,),

        DraggableScrollableSheet(
            initialChildSize: 0.35,
            maxChildSize: 0.6,
            minChildSize: 0.35,
            builder: (BuildContext context, ScrollController scrollcontroller) {
              return Container(
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))),
                child: ListView(
                  controller: scrollcontroller,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0, bottom: 10.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Winter Coat",
                            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600, color: Colors.black),),
                            Text("\$ 80",
                              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w400, color: Color(0xFF828282)) ,),
                            SizedBox(height: 20.0,),
                            Text("Your Size", style: TextStyle(fontSize: 15.0,color: Color(0xFF333333), fontWeight: FontWeight.w600),),
                            SizedBox(height: 10.0,),
                            Row(
                              children: [
                                Size_container(size: "S",),
                                Size_container(size: "M",),
                                Size_container(size: "L",),
                                Size_container(size: "XL",),
                              ],
                            ),
                            SizedBox(height: 30.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Details_payment_conainer(label: "Details",),
                                Details_payment_conainer(label: "Order",),
                                Details_payment_conainer(label: "Payment",),
                              ],
                            ),
                            SizedBox(height: 20.0,),
                            Row(
                             // crossAxisAlignment: CrossAxisAlignment.stretch ,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Details(text1: "Composition", text2: "100% Polyester",),
                                Spacer(),
                                Details(text1: "Country", text2: "Poland",),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
                );
            }),
          Align(
            alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.0),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 120.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                  color: Color(0xFF333333),
                    onPressed: (){}, child: Text("Add to cart", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w500, color: Color(0xFFFBD9E0)),)),
              ),
            ),
        ],
      )
    );
  }
}

class Details extends StatelessWidget {
  final String text1;
  final String text2;
  Details({this.text1, this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text1, style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Color(0xFF333333)),),
          Text(text2, style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Color(0xFFFBD9E0)),),
        ],
      ),
      height: 80.0,
      width: 130.0,
      color: Colors.white,
    );
  }
}

class Details_payment_conainer extends StatelessWidget {
  final String label;
  Details_payment_conainer({this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: 100.0,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(right: 5.0, top: 5.0),
      decoration: BoxDecoration(
        color: Color(0xFFFBD9E0),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Center(child: Text(label, style: TextStyle(color: Color(0xFF333333),fontWeight: FontWeight.w400,fontSize: 15.0),)),
    );
  }
}

class Size_container extends StatelessWidget {
  final String size;
  Size_container({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: Center(child: Text(size, style: TextStyle(fontWeight: FontWeight.w600,color: Color(0xFF333333)),)),
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 2.0,
              color: Color(0xFFFBD9E0),offset: Offset(2.5,2.5))
        ]
      ),

    );
  }
}
