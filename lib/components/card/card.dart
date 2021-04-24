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
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Color(0x55555555),
              offset: Offset(6.0, 6.0),
              blurRadius: 5.0,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 100,
        width: size.width * 0.8,
        child: Row(
          children: [
            Container(
              width: 60,
              height: size.height,
              margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Icon(Icons.phone),
            ),
            Container(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1984", textAlign: TextAlign.left),
                  Spacer(),
                  Text("george orwell", textAlign: TextAlign.left),
                  Spacer(),
                  Text("300 / 350", textAlign: TextAlign.left),
                ],
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
