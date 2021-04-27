import 'package:flutter/material.dart';

class CardComponent extends StatefulWidget {
  @override
  final String title;
  final String author;
  final int pagesRead;
  final int totalPages;
  final bookImage;
  const CardComponent(
      {Key key,
      this.title,
      this.author,
      this.pagesRead,
      this.totalPages,
      this.bookImage})
      : super(key: key);
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
            // left image
            Container(
              width: 60,
              height: size.height,
              margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Icon(widget.bookImage),
            ),
            // texts in the middle
            Container(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title, textAlign: TextAlign.left),
                  Spacer(),
                  Text(widget.author, textAlign: TextAlign.left),
                  Spacer(),
                  Text("${widget.pagesRead} / ${widget.totalPages}",
                      textAlign: TextAlign.left),
                ],
              ),
            ),
            Spacer(),
            // read icon
            Icon(Icons.book),
          ],
        ),
      ),
    );
  }
}
