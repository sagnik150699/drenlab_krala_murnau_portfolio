import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/ui/mobile.dart';
import 'package:flutter_app/ui/desktop.dart';




class Services extends StatefulWidget {
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
  //  var deviceData= MediaQuery.of(context).orientation;
    // double _width = MediaQuery.of(context).size.width;
    // double _height = MediaQuery.of(context).size.height;




    return MaterialApp(
      theme: ThemeData.dark(),
      home: SafeArea(
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return Desktop();
              } else {
                return  Mobile();
              }
            },
          ),
          appBar: AppBar(
            leading: Icon(
              Icons.menu,

            ),
          ),
          // body: Center(
          //   child: (MediaQuery.of(context).size.width  > 500) ? Text("Hello1") : Text("Hello 2")
          // ),
        ),
      ),
    );
  }
}
