import 'package:flutter/material.dart';

class CardComponent extends StatefulWidget {
  @override
  _CardComponentState createState() => _CardComponentState();
}

class _CardComponentState extends State<CardComponent> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff555555),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 100,
        width: size.width * 0.8,
        child: Row(
          children: [
            Icon(Icons.phone_sharp),
            Spacer(),
            Center(
              child: Container(
                height: 80,
                child: Column(
                  children: [
                    Text("1984", textAlign: TextAlign.left),
                    Spacer(),
                    Text("george orwell", textAlign: TextAlign.left),
                    Spacer(),
                    Text("300 / 350", textAlign: TextAlign.left),
                  ],
                ),
              ),
            ),
            Spacer(),
            Icon(Icons.book_sharp),
          ],
        ),
      ),
    );
  }
}
