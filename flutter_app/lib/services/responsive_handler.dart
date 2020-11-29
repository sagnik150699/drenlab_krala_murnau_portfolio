import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/ui/mobilelarge.dart';
import 'package:flutter_app/ui/mobilesmall.dart';
import 'package:flutter_app/ui/web.dart';

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
      //theme: ThemeData.dark(),
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Web();
          }
          if(constraints.maxHeight > 700 && constraints.maxHeight< 800){
            return Mobile1();
          }
          else {
            return Mobile2();
          }

        },
      ),
    );
  }
}
