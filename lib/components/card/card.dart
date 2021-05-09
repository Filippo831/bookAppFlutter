import 'package:bookapp/blocks/bookProvider.dart';
import 'package:bookapp/components/card/cardHeader.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardComponent extends StatefulWidget {
  @override
  const CardComponent({Key key}) : super(key: key);
  _CardComponentState createState() => _CardComponentState();
}

class _CardComponentState extends State<CardComponent> {
  @override
  Widget build(BuildContext context) {
    var bookList = Provider.of<BookProvider>(context);
    var size = MediaQuery.of(context).size;
    List<bool> isOpenList;
    return Container(
      child: ExpansionPanelList(
          children: bookList
              .getBooks()
              .map(
                (e) => ExpansionPanel(
                  isExpanded: isOpenList[0],
                  headerBuilder: (BuildContext context, bool isOpen) {
                    return CardHeader(
                        title: e.title,
                        author: e.author,
                        pagesRead: e.pagesRead,
                        totalPages: e.totalPages,
                        bookImage: e.bookImage);
                  },
                  body: Container(
                    height: 100,
                  ),
                ),
              ).toList(),
          expansionCallback: (i, isOpen) =>
              setState(() => isOpenList[i] = !isOpen)),
    );
  }
}
