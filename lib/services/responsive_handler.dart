import 'package:flutter/material.dart';

import '../ui/mobilesmall.dart';
import '../ui/web.dart';



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
    //  theme: ThemeData.dark(),
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Web();
          }
          else {
            return Mobile2();
          }

        },
      ),
    );
  }
}
