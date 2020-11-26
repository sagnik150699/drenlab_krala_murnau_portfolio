import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  @override
  _Mobile createState() => new _Mobile();
}

class _Mobile extends State<Mobile>{
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Hello", style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),),
            ),
            ListTile(
              leading: Text("hello2"),
            ),
            ListTile(),
            ListTile(),
          ],
        ),
      ),
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
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
        ),
      ),
      body: Stack(
        children:<Widget>[
          Center(child: Text("data")),
          ListView(scrollDirection: Axis.horizontal, children: [
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
          )
        ]),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Center(child: Text("data", style: TextStyle(fontSize: 30),))),
              Expanded(child: Center(child: Text("data", style: TextStyle(fontSize: 30)))),
              Expanded(child: Center(child: Text("data", style: TextStyle(fontSize: 30)))),
            ],
          ),]),
    );
    // return
  }
}
