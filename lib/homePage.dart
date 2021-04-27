import 'package:bookapp/blocks/bookProvider.dart';
import 'package:bookapp/components/card/card.dart';
import 'package:bookapp/components/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var bookList=Provider.of<BookProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("bookApp", textAlign: TextAlign.left),
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        titleSpacing: 40,
      ),
      body: SafeArea(
        child: Container(
            child: Column(
                // create a child for every book on booklist 
                children: bookList.getBooks().map(
                    (e) => CardComponent(
                        title: e.title,
                        author: e.author,
                        pagesRead: e.pagesRead,
                        totalPages: e.totalPages,
                        bookImage: e.bookImage,
                    ),
                ).toList(),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: NavbarComponent(),
      ),
    );
  }
}
