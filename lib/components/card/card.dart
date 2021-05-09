import 'package:bookapp/components/card/cardHeader.dart';
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
    return 
        ExpansionPanel(
            isExpanded: isOpenList[0],
          headerBuilder: (BuildContext context, bool isOpen) {
            return CardHeader(
                title: widget.title,
                author: widget.author,
                pagesRead: widget.pagesRead,
                totalPages: widget.totalPages,
                bookImage: widget.bookImage);
          },
          body: Container(
            height: 100,
          ),
        ),
      ],
    );
  }
}
