import 'package:bookapp/blocks/bookProvider.dart';
import 'package:bookapp/components/readPage/buttons.dart';
import 'package:bookapp/components/readPage/title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ReadPageComponent extends StatefulWidget {
  @override
  _ReadPageState createState() => _ReadPageState();
}

class _ReadPageState extends State<ReadPageComponent> {
  @override
  Widget build(BuildContext context) {
    var bookProvider = Provider.of<BookProvider>(context);
    var selectedBook = bookProvider.getBooks()[bookProvider.getIndex()];
    return Scaffold(
      appBar: AppBar(
        title: Text("newBook", textAlign: TextAlign.left),
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        titleSpacing: 40,
      ),
      body: Container(
        child: Column(
          children: [
            ReadPageTitleComponent(
                selectedBook: selectedBook != null
                    ? selectedBook
                    : bookProvider.getBooks()[0]),
            ReadPageButtonsComponents(),
          ],
        ),
      ),
    );
  }
}
