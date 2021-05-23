import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// single book class
class Book {
  String title;
  String author;
  int pagesRead;
  int totalPages;
  IconData bookImage;
  DateTime insertTime;

  //constructor
  Book(
      {this.title,
      this.author,
      this.pagesRead,
      this.totalPages,
      this.bookImage,
      this.insertTime});
}

String title;
String author;
int pagesRead;
int totalPages;
IconData bookImage;
DateTime insertTime;

// bookProvider class
class BookProvider extends ChangeNotifier {
  // book list
  List booksList = [
    // 2 example element
    //new Book(
      //title: '1984',
      //author: 'George Orwell',
      //pagesRead: 324,
      //totalPages: 543,
      //bookImage: Icons.next_week,
      //insertTime: DateTime(2021, 2, 23, 2, 34),
    //),
    //new Book(
      //title: '1984',
      //author: 'George Orwell',
      //pagesRead: 324,
      //totalPages: 543,
      //bookImage: Icons.next_week,
      //insertTime: DateTime(2021, 2, 23, 2, 34),
    //),
  ];

  Future getBooksFromPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return jsonDecode(prefs.getString('books'));
  }

  // return the book list
  List getBooks() {
    if ((booksList == null) && (booksList.length == 0)) {
      getBooksFromPreferences().then((value) {
        booksList = value;
      });
    }
    return booksList;
  }

  void setTitle(String data) {
    title = data;
  }

  void setAuthor(String data) {
    author = data;
  }

  void setPages(int data) {
    totalPages = data;
  }

  void setImage(IconData data) {
    bookImage = data;
  }

  // add a new book
  addBook() async {
    // new book variable
    Book newBook = new Book(
      title: title,
      author: author,
      pagesRead: 0,
      totalPages: totalPages,
      bookImage: bookImage,
      insertTime: DateTime.now(),
    );
    // add the book to the list
    booksList.add(newBook);
    //  reset all input
    title = "";
    author = "";
    totalPages = 0;
    bookImage = null;

    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('books', booksList.toString());
  }
}
