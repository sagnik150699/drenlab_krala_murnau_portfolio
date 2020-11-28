import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Variables {
//First Scroll
  List<Widget> item = [
    Image(
      height: 300,
      image: AssetImage('images/cropped7.png'),
    ),
    Image(
      height: 200,
      image: AssetImage('images/cropped1.png'),
    ),
    Image(
      height: 300,
      image: AssetImage('images/cropped4.png'),
    ),
    Image(
      height: 300,
      image: AssetImage('images/cropped3.png'),
    ),
    Image(
      height: 300,
      image: AssetImage('images/cropped2.png'),
    ),
    Image(
      height: 300,
      image: AssetImage('images/cropped8.png'),
    ),
  ];


  //Second Scrooll

  List<Widget> item2 = [
    Image(
      height: 300,
      image: AssetImage('images/cropped8.png'),
    ),
    Image(
      height: 200,
      image: AssetImage('images/cropped1.png'),
    ),
    Image(
      height: 300,
      image: AssetImage('images/cropped4.png'),
    ),
    Image(
      height: 300,
      image: AssetImage('images/cropped3.png'),
    ),
    Image(
      height: 300,
      image: AssetImage('images/cropped2.png'),
    ),
    Image(
      height: 300,
      image: AssetImage('images/cropped8.png'),
    ),
  ];


  List<Widget> item3 = [ Card(
    color: Colors.black,
    shadowColor: Colors.deepOrange,
    elevation: 1,
    child: Text(
      "Germany",
      style: GoogleFonts.oswald(fontSize: 35,textStyle: TextStyle(color: Colors.white)),
    ),
  ),
  ];
}