import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ImageList.dart';
class PhotoList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),

      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Dress.length, itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8.0),
          child: Container(
           //color: Colors.black,

            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:DecorationImage(
                  image: ExactAssetImage(Dress[index].path),
              fit: BoxFit.cover,
            ),),

            ),
          ),
        );
      }),
    );

  }
}