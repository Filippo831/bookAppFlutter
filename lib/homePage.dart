import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: Icon(Icons.arrow_back),
            title: 
                 Text("bookApp"),
            
            actions: [
              Icon(Icons.umbrella_sharp),
            ],
            elevation: 0,
            backgroundColor: Color(0x11ffffff),
            centerTitle: true,
        ),
      
    );
  }
}
