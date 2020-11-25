import 'package:flutter/cupertino.dart';

class Desktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Text("Hello2"),
    );
  }
}
