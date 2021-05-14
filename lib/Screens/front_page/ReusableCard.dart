import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//To return the containers with gesture detection which are required at home screen .
class ReusableCard extends StatefulWidget {

  ReusableCard({@required this.tag});

  bool hasBeenPressed = false;
  Color col= Colors.white;
  final String tag;

  @override
  _ReusableCardState createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0,right: 10),
      child: GestureDetector(
        onTap:() =>{ setState(() {
         widget.hasBeenPressed = !widget.hasBeenPressed;
         if (widget.hasBeenPressed ==true) {
            widget.col=Color(0xFFFBDCE0);
    } else {
    widget.col= Colors.white;
    }
    }),
        },
        child: Container(
          height: 35,
          child: Center(
            child: Text(widget.tag,
            style: GoogleFonts.quicksand(
            textStyle: TextStyle(
            color:Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w700,
      ),),),
          ),

          decoration: BoxDecoration(
            color: widget.col,
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      );

  }
}
