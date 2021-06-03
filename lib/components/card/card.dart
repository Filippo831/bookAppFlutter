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
  List<bool> isOpenList;
  void inizializeOpenList(int length) {
    setState(() {
      isOpenList = List.filled(length, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    var bookList = Provider.of<BookProvider>(context);
    var size = MediaQuery.of(context).size;
    if (bookList != null) {
      return Column(
        children: bookList
            .getBooks()
            .asMap()
            .map((index, e) {
              if (isOpenList == null || isOpenList.length == 0) {
                inizializeOpenList(bookList.getBooks().length);
              }
              return MapEntry(
                index,
                CardHeader(
                    title: e.title,
                    author: e.author,
                    pagesRead: e.pagesRead,
                    totalPages: e.totalPages,
                    bookImage: e.bookImage,
                    index:index),
              );
            })
            .values
            .toList(),
      );
    } else {
      return Text('nothing to read');
    }
  }
}
