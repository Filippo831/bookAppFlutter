import 'package:bookapp/components/card/cardComponents/bottom.dart';
import 'package:bookapp/components/card/cardComponents/leading.dart';
import 'package:bookapp/components/card/cardComponents/text.dart';
import 'package:bookapp/components/card/cardComponents/trailing.dart';
import 'package:flutter/material.dart';

class CardHeader extends StatefulWidget {
  const CardHeader({
    Key key,
    @required this.title,
    @required this.author,
    @required this.pagesRead,
    @required this.totalPages,
    @required this.bookImage,
    @required this.index,
  }) : super(key: key);

  final String title;
  final String author;
  final int pagesRead;
  final int totalPages;
  final bookImage;
  final int index;

  @override
  _CardHeaderState createState() => _CardHeaderState();
}

class _CardHeaderState extends State<CardHeader> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
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
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: size.width * 0.03),
      constraints: BoxConstraints(
        minHeight: 60,
      ),
      child: SingleChildScrollView(
        child: ExpansionTile(
          onExpansionChanged: (value) {
            setState(() {
              isOpen = value;
            });
          },
          leading: LeadingWidget(size: size, bookImage: widget.bookImage),
          title: Text(
            widget.title,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline5,
          ),
          subtitle: SubtitleWidget(
              author: widget.author,
              pagesRead: widget.pagesRead,
              totalPages: widget.totalPages),
          trailing: Visibility(
              visible: !isOpen,
              child: TrailingWidget(index:widget.index)),
          children: [
            CardBottomComponent(index:widget.index),
          ],
        ),
      ),
    );
  }
}
