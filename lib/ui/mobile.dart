import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../components.dart';

class Mobile extends StatefulWidget {
  @override
  _Mobile createState() => new _Mobile();
}

class _Mobile extends State<Mobile> {
  ScrollController controller = ScrollController();
  bool changeCard = true;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      //double value = controller.offset/119;
      logger.d(controller.offset);
      if (controller.offset > 400) {
        setState(() {
          changeCard = false;
        });

      } else
        setState(() {
          changeCard = true;
        });


      logger.d(changeCard);

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
    logger.d("Width $categoryWidth");
    logger.d("Height $categoryHeight");




    return SafeArea(
      child: Scaffold(
        drawer:  Drawers(),
        key: _scaffoldKey,
        body: NestedScrollView(
          controller: controller,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                leading:  IconButton(
                  padding: EdgeInsets.only(top: 0, left: 7),
                  color: Colors.black,
                  icon:  Icon(
                    Icons.menu,
                    size: 40,
                  ),
                  onPressed: () => _scaffoldKey.currentState?.openDrawer(),
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
                    items: Variables().itemMobile,
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
                  items: CityNames(categoryHeight),
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

