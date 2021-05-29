import 'package:flutter/material.dart';
class ReadPageComponent extends StatefulWidget {
  @override
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPageComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("newBook", textAlign: TextAlign.left),
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        titleSpacing: 40,
      ),
      body: Container(
          child:Text('ciao'),
      ),
);
  }
}
