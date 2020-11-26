import 'package:flutter/cupertino.dart';

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [

      Image(
          image: AssetImage('images/1.jpg'),
    ),
        Image(
            image: AssetImage('images/7.jpg'),
        ),

      ]
      );

  }
}
