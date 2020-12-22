import 'package:flutter/cupertino.dart';
//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/components/variables.dart';

class Mobile2 extends StatefulWidget {
  @override
  _Mobile2 createState() => new _Mobile2();
}

class _Mobile2 extends State<Mobile2> {
  ScrollController controller = ScrollController();
  bool changeCard = true;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      //double value = controller.offset/119;
      print(controller.offset);
      if (controller.offset > 400) {
        setState(() {
          changeCard = false;
        });

      } else
        setState(() {
          changeCard = true;
        });


      print(changeCard);

      // setState(() {
      //  closeTopContainer = controller.offset > 50;
      // });
    });
  }

  var city = 'Berlin,Germany';
  Variables variables = new Variables();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    final double categoryWidth = size.width;

    //bool changeCard = true;
    print("Width $categoryWidth");
    print("Height $categoryHeight");
    List<Widget> itemText = [
      Container(
        child: Text(
          "Munich, Germany",
          style: GoogleFonts.sedgwickAveDisplay(
              fontSize: categoryWidth / 14,
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

    return SafeArea(
      child: Scaffold(
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
              FlatButton(child: list("LifeStyle blog",),
              onPressed:(){

              },
              ),
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
        key: _scaffoldKey,
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
                    size: 40,
                  ),
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                ),
                backgroundColor: Colors.white,
                expandedHeight: 500.0,
                floating: false,
                pinned: true,
                //responsive flexible spaceBar
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(bottom: 7),
                  centerTitle: false,
                  title:
            //changeCard?
                          Align(
                          alignment:Alignment.bottomRight,
                          child: Container(
                            width: changeCard?
                                categoryWidth/2.3:
                                categoryWidth/3.2,
                            child: variables.cards(changeCard?categoryWidth / 13:categoryWidth/19,
                                Colors.white, "Krala Murnau", Colors.black),
                          ),
                        ),
                      // : Align(
                      //     alignment: Alignment.bottomCenter,
                      //     child: Container(
                      //       child: variables.cards(categoryWidth / 19,
                      //           Colors.white, "Krala Murnau", Colors.black),
                      //     ),
                      //   ),
                  background: CarouselSlider(
                      items: Variables().item,
                      options: CarouselOptions(
                        height: categoryWidth,
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
                      )),
                ),
              )
            ];
          },
          //Rest Of the Scrolls
          body: ListView(
            children: <Widget>[
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //Responsive icon search
                    Expanded(
                      child: Icon(
                        Icons.search,
                        size: categoryWidth / 10,
                      ),
                    ),
                    //Responsive private investigator
                    Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: <Widget>[
                          Card(
                            shadowColor: Colors.black,
                            elevation: 0,
                            child: Text(
                              "Private Investigator",
                              style: GoogleFonts.sedgwickAveDisplay(
                                  fontSize: categoryWidth / 11),
                            ),
                          ),
                          //Responsive city
                          Container(
                              child: Text("Current Location: $city",
                                  style: GoogleFonts.inconsolata(
                                      fontSize: categoryWidth / 28,
                                      textStyle:
                                          TextStyle(color: Colors.black45)))),
                        ],
                      ),
                    ),
                  ]),
              //Responsive
              SizedBox(
                height: size.width / 15,
                width: 10,
              ),
              //Responsive description
              ListTile(
                  title: Text(
                "Providing private detective services and private investigation services to businesses ",
                style: GoogleFonts.inconsolata(
                    color: Colors.black38, fontSize: categoryWidth / 27),
              )),

              //Hire Professional content
              //Made responsive
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  height: categoryWidth / 1.37,
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
                                  fontSize: categoryWidth / 9,
                                  color: Colors.white),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: FlatButton(
                            onPressed: null,
                            child: ListTile(
                              shape: RoundedRectangleBorder(),
                              title: Card(
                                shape: RoundedRectangleBorder(),
                                child: Text(
                                  "Hire Professional ",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.oswald(
                                      fontSize: categoryWidth / 16,
                                      color: Colors.black,
                                      letterSpacing: 3),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ),

              //2nd stack
              Stack(alignment: Alignment.bottomLeft, children: <Widget>[
                //Carausal
                CarouselSlider(
                    items: Variables().item2,
                    options: CarouselOptions(
                      height: categoryWidth / 0.8,
                      //  width:
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
                    )),
// Responsive Lifestyle

                Container(
                  width: categoryWidth/2.3,
                  child: variables.cards(
                      categoryWidth / 9, Colors.white, "LifeStyle", Colors.black),
                ),
              ]),
//Responsive City
              Padding(
                padding: EdgeInsets.only(left: 120),
                child: CarouselSlider(
                  items: itemText,
                  options: CarouselOptions(
                    height: 60,
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
                  ),
                ),
              ),
//Responsive Text
              ListTile(
                  title: Text(
                "Providing private detective services and private investigation services to businesses ",
                style: GoogleFonts.inconsolata(
                    color: Colors.black38, fontSize: categoryWidth / 25),
              )),
              // ]),
              // SizedBox(
              //   height: 40,
              // ),
              //3rd stack
              Stack(alignment: Alignment.bottomLeft, children: <Widget>[
                //3rd Carousal Responsive
                CarouselSlider(
                    items: Variables().item,
                    options: CarouselOptions(
                      height: categoryWidth / 0.8,
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
                    )),
                //3rd Krala Murnau text Responsie
                Container(
                  width: categoryWidth/1.8,
                  child: variables.cards(categoryWidth / 10, Colors.white, "Krala Murnau",
                      Colors.black),
                ),
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
                        fontSize: categoryWidth / 11),
                  ),
                ),
              ),
              ListTile(
                  title: Center(
                child: Text(
                  "Providing private detective services and private investigation services to businesses ",
                  style: GoogleFonts.inconsolata(color: Colors.black38),
                ),
              )),
            ],
          ),
        ),
      ),
    );
    // return
  }
}

//
// ListView.builder(
// dragStartBehavior: DragStartBehavior.start,
// controller: controller,
// physics: BouncingScrollPhysics(),
// addAutomaticKeepAlives: false,
// cacheExtent: 100,
// itemCount: itemData.length,
// itemBuilder: (context, index) {
// return itemData[index];
// },
// ),
// onVerticalDragStart: (DragStartDetails details){
//   print(details);
// },
// onVerticalDragUpdate: (DragUpdateDetails details){ setState(() {
//   changeCard=true;
// }); print(details);},
