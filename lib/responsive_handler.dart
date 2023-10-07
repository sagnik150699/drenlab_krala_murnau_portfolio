import 'package:flutter/material.dart';

import 'ui/mobile.dart';
import 'ui/web.dart';



class ResponsiveHandler extends StatefulWidget {
  @override
  _ResponsiveHandlerState createState() => _ResponsiveHandlerState();
}

class _ResponsiveHandlerState extends State<ResponsiveHandler> {
  @override
  Widget build(BuildContext context) {
    //  var deviceData= MediaQuery.of(context).orientation;
    // double _width = MediaQuery.of(context).size.width;
    // double _height = MediaQuery.of(context).size.height;

    return  LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 800) {
            return Web();
          }
          else {
            return Mobile();
          }

        },
      );
  }
}
