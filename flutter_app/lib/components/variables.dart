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

  List<Widget> item3 = [
  Image(
  height: 300,
  image: AssetImage('images/backL.png'),
  ),
  Image(
  height: 200,
  image: AssetImage('images/heaterL.png'),
  ),
  Image(
  height: 300,
  image: AssetImage('images/poseL.png'),
  )];



//Custom Cards
  Card cards (double size, color  , String str, cardColor ){
    return Card(
      color: cardColor,
      elevation: 0,
      child: Text(
        str,
        style: GoogleFonts.oswald(
            fontSize: size,
            color: color),
      ),
    );
  }
}

