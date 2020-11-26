import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mobile extends StatefulWidget {
  @override
  _Mobile createState() => new _Mobile();
}

class _Mobile extends State<Mobile> {
  var city = 'Berlin,Germany';
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                "Hello",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Text("hello2"),
            ),
            ListTile(),
            ListTile(),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image(
              height: 450,
              image: AssetImage('images/cropped7.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450, left: 30),
            child: Card(
              elevation: 10,
              color: Colors.black,
              child: Text(
                "Krala Murnau",
                style: GoogleFonts.oswald(fontSize: 45, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 540, left: 125),
            child: Card(
              shadowColor: Colors.black,
              elevation: 0,
              child: Text(
                "Private Detective",
                style: GoogleFonts.sedgwickAveDisplay(fontSize: 35),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 135,top: 580),
            child: Container(

                child: Text("Current Location:$city",
                    style: GoogleFonts.oswald(fontSize: 15,textStyle: TextStyle(color: Colors.black45)))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: Text(
                  "",
                  style: GoogleFonts.oswald(fontSize: 40),
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
              Expanded(
                  child: Center(
                      child: Text(
                "",
                style: TextStyle(fontSize: 30),
              ))),
              Expanded(
                  child:
                      Center(child: Text("", style: TextStyle(fontSize: 30)))),
              Expanded(
                  child:
                      Center(child: Text("", style: TextStyle(fontSize: 30)))),
            ],
          ),
        ]),
      ),
    );
    // return
  }
}

// ListView(scrollDirection: Axis.horizontal, children: [
// Image(
// height: 10,
// image: AssetImage('images/cropped5.png'),
// ),
// Image(
// image: AssetImage('images/cropped7.png'),
// ),
// Image(
// image: AssetImage('images/cropped6.png'),
// ),
// Image(
// image: AssetImage('images/cropped1.png'),
// )
// ]),
