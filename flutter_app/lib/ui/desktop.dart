import 'package:flutter/cupertino.dart';

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:<Widget> [
        Expanded(
          child: Image(
            image: AssetImage('images/7.jpg'),
          ),
        ),
      Expanded(
        child: Image(
          image: AssetImage('images/6.jpg'),
        ),
      ),
      ],
    );
  }
}
