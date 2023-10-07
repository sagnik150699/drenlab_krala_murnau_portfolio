import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
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


  List<Widget> itemMobile = [
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

  List<Widget> itemWeb = [
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
        textAlign: TextAlign.center,
        style: GoogleFonts.oswald(
            fontSize: size,
            color: color),
      ),
    );
  }
}

var city = 'Berlin,Germany';
Logger logger = Logger();

//Drawer
class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
     ListTile listTiles(String text) {
    return ListTile(
    title: Card(
    child: Text(
    '$text',
    textAlign: TextAlign.center,
    style: GoogleFonts.oswald(fontSize: 30, color: Colors.white),
    ),
    color: Colors.black,
    ),
    onTap: () {
    // Update the state of the app.
    Navigator.pop(context);
    });
    }
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image(
              height: 300,
              image: AssetImage('images/circle-cropped.png'),
            ),
          ),
          TextButton(child: listTiles("LifeStyle blog",),
            onPressed:(){

            },
          ),
          listTiles("Cafe"),
          listTiles("Contact"),
          listTiles("Team"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(Icons.call),
                Icon(Icons.alternate_email_outlined),
                Icon(Icons.message_outlined)
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> CityNames(categoryHeight){
  List<Widget> CityNames = [
    ListTile(
      trailing: Text(
        "Munich, Germany",
        style: GoogleFonts.sedgwickAveDisplay(
            fontSize: categoryHeight / 15,
            textStyle: TextStyle(color: Colors.black)),
      ),
    ),
  ];
  return CityNames;
}