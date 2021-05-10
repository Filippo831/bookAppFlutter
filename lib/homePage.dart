import 'package:bookapp/components/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:bookapp/components/card/card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bookApp", textAlign: TextAlign.left),
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        titleSpacing: 40,
      ),
      body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CardComponent(),
                ],
              ),
          ),
      ),
      bottomNavigationBar: SafeArea(
        child: NavbarComponent(),
      ),
    );
  }
}
