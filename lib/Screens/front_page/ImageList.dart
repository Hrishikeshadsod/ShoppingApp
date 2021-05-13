import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'front_page.dart';
class ImageList{
 final String productName;
 final String path;
 final double Price;
 final String composition;
 final String country;
 final String details;




  ImageList({this.productName,this.path,this.Price, this.composition,  this.country, this.details});}

  List<ImageList> Dress=[
    ImageList(productName:"Black Coat", path:"images/winter_wear/D1.jpeg",Price:80.0,composition:"100% polyester",country:"Poland",details:"" ),
    ImageList(productName:"Winter Coat", path:"images/winter_wear/D2.jpeg",Price:110.0,composition:"100% cotton",country:"India",details:"" ),
    ImageList(productName:"Pink Coat", path:"images/winter_wear/D3.jpeg",Price:70.0,composition:"cotton polyester mix",country:"USA",details:"" ),
    ImageList(productName:"Black Dress", path:'images/normal_wear/1A.jpeg',Price:180.0,composition:"100% polyester",country:"Australia",details:"" ),
    ImageList(productName:"Brown Dress", path:'images/normal_wear/1B.jpeg',Price:800.0,composition:"100% fibre",country:"Japan",details:"" ),
    ImageList(productName:"Black Top", path:'images/normal_wear/B1.jpeg',Price:880.0,composition:"100% polyester",country:"Britain",details:"" ),
    ImageList(productName:"Jeans Wear", path:'images/normal_wear/C1.jpeg',Price:870.0,composition:"100% cotton",country:"India",details:"" ),


  ];