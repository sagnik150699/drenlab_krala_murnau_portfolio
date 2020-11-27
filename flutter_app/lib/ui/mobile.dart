import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Mobile extends StatefulWidget {
  @override
  _Mobile createState() => new _Mobile();
}

class _Mobile extends State<Mobile> {
  var city = 'Berlin,Germany';
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    ScrollController controller = ScrollController();
    bool closeTopContainer = false;
    print(size);
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


controller.addListener(() {
  closeTopContainer = controller.offset > 50;
});

    List<Widget> itemData = [
      SizedBox(
        height: 900,
        width: 700,
        child: Stack(children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(0),
              child: CarouselSlider(
                  items: item,
                  options: CarouselOptions(
                    height: 500,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.911,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.easeInOutSine,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  ))),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ListTile(
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
                  // Scaffold.of(context).openDrawer();
                },
              ),
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
            padding: const EdgeInsets.only(top: 550, left: 70),
            child: Icon(
              Icons.search,
              size: 35,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 135, top: 580),
            child: Container(
                child: Text("Current Location: $city",
                    style: GoogleFonts.inconsolata(
                        fontSize: 15,
                        textStyle: TextStyle(color: Colors.black45)))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 625),
            child: ListTile(
                title: Text(
              "Providing private detective services and private investigation services to businesses ",
              style: GoogleFonts.inconsolata(color: Colors.black38),
            )),
          ),
        ]),
      ),
      SizedBox(
        height: 50,
      ),
      Stack(children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(0),
            child: CarouselSlider(
                items: item,
                options: CarouselOptions(
                  height: 500,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.911,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInOutSine,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ))),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListTile(
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
                // Scaffold.of(context).openDrawer();
              },
            ),
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
          padding: const EdgeInsets.only(top: 550, left: 70),
          child: Icon(
            Icons.search,
            size: 35,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 135, top: 580),
          child: Container(
              child: Text("Current Location: $city",
                  style: GoogleFonts.inconsolata(
                      fontSize: 15,
                      textStyle: TextStyle(color: Colors.black45)))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 625),
          child: ListTile(
              title: Text(
            "Providing private detective services and private investigation services to businesses ",
            style: GoogleFonts.inconsolata(color: Colors.black38),
          )),
        ),
      ]),
      SizedBox(
        height: 40,
      ),
      Stack(children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(0),
            child: CarouselSlider(
                items: item,
                options: CarouselOptions(
                  height: 500,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.911,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInOutSine,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ))),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListTile(
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
                // Scaffold.of(context).openDrawer();
              },
            ),
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
          padding: const EdgeInsets.only(top: 550, left: 70),
          child: Icon(
            Icons.search,
            size: 35,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 135, top: 580),
          child: Container(
              child: Text("Current Location: $city",
                  style: GoogleFonts.inconsolata(
                      fontSize: 15,
                      textStyle: TextStyle(color: Colors.black45)))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 625),
          child: ListTile(
              title: Text(
            "Providing private detective services and private investigation services to businesses ",
            style: GoogleFonts.inconsolata(color: Colors.black38),
          )),
        ),
      ]),
    ];


    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          controller: controller,
          itemCount: itemData.length,
          itemBuilder: (context, index) {
            return (itemData[index]);
          },
        ),
      ),
    );
    // return
  }
}
