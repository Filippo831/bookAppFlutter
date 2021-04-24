import 'package:flutter/material.dart';

class NewBookComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("newBook", textAlign: TextAlign.left),
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        titleSpacing: 40,
      ),
      body: Column(
        children: [
          Container(
            child: Text('ciao'),
          ),
        ],
      ),
    );
  }
}
