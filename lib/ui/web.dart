
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/variables.dart';

class Web extends StatefulWidget {
  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  bool changeCard = true;
  var city = 'Berlin,Germany';

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      //double value = controller.offset/119;
      print(controller.offset);

      if (controller.offset > 400) {

        changeCard = false;
      } else
        changeCard = true;

      print(changeCard);

    });
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    var city = 'Berlin,Germany';
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;
    print("Width $categoryWidth");
    print("Height $categoryHeight");
    Variables variables = new Variables();



    List<Widget> itemText = [
      ListTile(
        trailing: Text(
          "Munich, Germany",
          style: GoogleFonts.sedgwickAveDisplay(
              fontSize: categoryHeight / 16,
              textStyle: TextStyle(color: Colors.black)),
        ),
      ),
    ];

    ListTile list(String text) {
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

    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        drawer: new Drawer(
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
              list("LifeStyle"),
              list("Cafe"),
              list("Contact"),
              list("Team"),
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
        ),
        body: NestedScrollView(
          controller: controller,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading: new IconButton(
                  padding: EdgeInsets.only(top: 0, left: 7),
                  color: Colors.black,
                  icon: new Icon(
                    Icons.menu,
                    size: 60,
                  ),
                  onPressed: () => _scaffoldKey.currentState!.openDrawer(),
                ),
                backgroundColor: Colors.white,
                expandedHeight: 500.0,
                floating: false,
                pinned: true,
                //responsive flexible spaceBar
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedDefaultTextStyle(
                        style: changeCard
                            ? GoogleFonts.oswald(
                                fontSize: 5, color: Colors.white)
                            : GoogleFonts.oswald(
                                fontSize: 5, color: Colors.black),
                        duration: const Duration(milliseconds: 50),
                        child: changeCard
                            ? variables.cards(categoryHeight / 14, Colors.white,
                                "Krala Murnau", Colors.black)
                            : variables.cards(categoryHeight / 25, Colors.black,
                                "Krala Murnau", Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          TextButton(
                              onPressed: () {},
                              child: changeCard
                                  ? variables.cards(
                                      categoryHeight / 30,
                                      Colors.black,
                                      "LifeStyle",
                                      Colors.white,
                                    )
                                  : variables.cards(
                                      categoryHeight / 30,
                                      Colors.white,
                                      "LifeStyle",
                                      Colors.black,
                                    )),
                          TextButton(
                              onPressed: () {},
                              child: changeCard
                                  ? variables.cards(categoryHeight / 30,
                                      Colors.black, "Kaffee", Colors.white)
                                  : variables.cards(categoryHeight / 30,
                                      Colors.white, "Kaffee", Colors.black)),
                          TextButton(
                            onPressed: () {},
                            child: changeCard
                                ? variables.cards(categoryHeight / 30,
                                    Colors.black, "Contact", Colors.white)
                                : variables.cards(categoryHeight / 30,
                                    Colors.white, "Contact", Colors.black),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: changeCard
                                  ? variables.cards(categoryHeight / 30,
                                      Colors.black, "Hire", Colors.white)
                                  : variables.cards(categoryHeight / 30,
                                      Colors.white, "Hire", Colors.black)),
                        ],
                      )
                    ],
                  ),
                  background: CarouselSlider(
                      items: Variables().item3,
                      options: CarouselOptions(
                        height: categoryWidth,
                        aspectRatio: 16 / 9,
                        viewportFraction: .400,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.easeInOutSine,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      )),
                ),
                //    bottom: PreferredSize( child: Text("Hello"), preferredSize: Size.fromHeight(40),),
              )
            ];
          },
          body: ListView(
            //controller: controller,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    //Responsive private investigator
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Card(
                          shadowColor: Colors.black,
                          elevation: 0,
                          child: Text(
                            "Private Investigator",
                            style: GoogleFonts.sedgwickAveDisplay(
                                fontSize: categoryHeight / 16),
                          ),
                        ),
                        //Responsive city
                        Container(
                            child: Text("Current Location: $city",
                                style: GoogleFonts.inconsolata(
                                    fontSize: categoryHeight / 30,
                                    textStyle:
                                        TextStyle(color: Colors.black45)))),
                      ],
                    ),
                    //Responsive icon search
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Icon(
                        Icons.search,
                        size: categoryHeight / 13,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: categoryHeight / 10,
                width: 10,
              ),
              //Responsive description
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: ListTile(
                    title: Text(
                  "Providing private detective services and private investigation services to businesses to face internal challenges  ",
                  style: GoogleFonts.inconsolata(
                      color: Colors.black38, fontSize: categoryHeight / 27),
                )),
              ),
              //Hire Professional content
              //Made responsive
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 50),
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: categoryWidth / 3,
                  // width: 5,
                  color: Colors.black,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child: Center(
                            child: Text(
                              "Get your case " "Solved",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.oswald(
                                  fontSize: categoryHeight / 9,
                                  color: Colors.white),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: TextButton(
                            onPressed: null,
                            child: ListTile(
                              shape: RoundedRectangleBorder(),
                              title: Card(
                                shape: RoundedRectangleBorder(),
                                child: Text(
                                  "Hire Professional ",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.oswald(
                                      fontSize: categoryHeight / 16,
                                      color: Colors.black,
                                      letterSpacing: 5),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              //2nd scroll
              Stack(alignment: Alignment.bottomLeft, children: <Widget>[
                //Carausal
                CarouselSlider(
                    items: Variables().item3,
                    options: CarouselOptions(
                      height: categoryHeight,
                      //  width:
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.500,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeInOutSine,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
// Responsive Lifestyle

                variables.cards(categoryHeight / 10, Colors.white, "LifeStyle",
                    Colors.black),
              ]),
//Responsive City
              CarouselSlider(
                items: itemText,
                options: CarouselOptions(
                  height: 90,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInOutSine,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
//Responsive Text
              ListTile(
                  title: Text(
                "The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela",
                style: GoogleFonts.inconsolata(
                    color: Colors.black38, fontSize: categoryHeight / 27),
              )),

              //3rd Scroll

              Stack(alignment: Alignment.bottomLeft, children: <Widget>[
                //3rd Carousal Responsive
                CarouselSlider(
                    items: Variables().item3,
                    options: CarouselOptions(
                      height: categoryHeight,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.500,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeInOutSine,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
                //3rd Krala Murnau text Responsie
                variables.cards(categoryHeight / 10, Colors.white,
                    "Caffè con Krala ", Colors.black),
              ]),

              //Kaffee Und milch responsive
              Align(
                alignment: Alignment.topRight,
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 0,
                  child: Text(
                    "Kaffee und Milch",
                    style: GoogleFonts.sedgwickAveDisplay(
                        fontSize: categoryHeight / 14),
                  ),
                ),
              ),
              ListTile(
                title: Center(
                  child: Text(
                    "Providing private detective services and private investigation services to businesses ",
                    style: GoogleFonts.inconsolata(color: Colors.black38),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Change Color of card and size of fonts in Vertical Drag( changeCard funtion to true)
// style: changeCard
//     ? GoogleFonts.oswald(
//         fontSize: 30, color: Colors.white)
//     : GoogleFonts.oswald(
//         fontSize: 15, color: Colors.black),
// duration: const Duration(milliseconds: 200),
