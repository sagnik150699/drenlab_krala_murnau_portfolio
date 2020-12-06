import 'package:flutter/material.dart';
import 'package:flutter_app/services/responsive_handler.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: Services());
  }
}