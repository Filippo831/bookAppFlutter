import 'package:bookapp/components/card/card.dart';
import 'package:bookapp/components/navbar/navbar.dart';
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
        title: Text("bookApp"),
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        titleSpacing: 40,
      ),
      body: Container(
        child: Column(
          children: [
            CardComponent(),
          ],
        ),
      ),
      bottomNavigationBar: NavbarComponent(),
    );
  }
}
