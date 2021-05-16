import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'front_page.dart';
import 'ImageList.dart';
import 'package:shopping/Screens/second_page/second_page.dart';


class MyList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Second_screen()));},
      child: Container(
        //color: Colors.black,
        //padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
         //height: MediaQuery.of(context).size.height * 0.5,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Dress.length, itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: Container(
              //color: Colors.white,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                children:<Widget> [
                  Expanded(
                    flex:7,
                    child: Container(
                      //height: MediaQuery.of(context).size.height * 0.7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Dress[index].path),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child: Container(
                      //alignment: Alignment.topCenter,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Text(
                                Dress[index].productName.toString(),
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
                              flex: 1,
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                "\$" +Dress[index].Price.toString(),
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
                ],
              ),
            ),
          );
        }),
      ),
    );

  }
}