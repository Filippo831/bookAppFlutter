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
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
        margin: EdgeInsets.symmetric(vertical: 10),
        height: size.height / 7,
        constraints: BoxConstraints(
          minHeight: 60,
          maxHeight: 100,
        ),
        width: size.width * 0.8,
        child: Row(
          children: [
            // left image
            Container(
              width: size.width * 0.15,
              constraints: BoxConstraints(
                maxWidth: 60,
              ),
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
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Spacer(),
                  Text(
                    widget.author,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  Spacer(),
                  Text(
                    "${widget.pagesRead} / ${widget.totalPages}",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            Spacer(),
            // read icon
            Container(
              padding: EdgeInsets.all(0),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.transparent),
                  side: MaterialStateProperty.all<BorderSide>(
                    BorderSide.none,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      side: BorderSide(color: Colors.transparent),
                    ),
                  ),
                ),
                child: Icon(
                  Icons.book,
                  size: 32,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
