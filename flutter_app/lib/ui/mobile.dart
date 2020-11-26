import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Klara Murnau",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico'),
        ),

        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 40,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView(scrollDirection: Axis.horizontal, children: [
        Image(
          image: AssetImage('images/cropped5.png'),
        ),
        Image(
          image: AssetImage('images/cropped7.png'),
        ),
        Image(
          image: AssetImage('images/cropped6.png'),
        ),
        Image(
          image: AssetImage('images/cropped1.png'),
        ),
      ]),
    );
    // return
  }
}
