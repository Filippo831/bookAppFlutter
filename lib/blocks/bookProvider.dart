import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// single book class
int index;

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
    new Book(
      title: '1984',
      author: 'George Orwell',
      pagesRead: 324,
      totalPages: 543,
      bookImage: Icons.next_week,
      insertTime: DateTime(2021, 2, 23, 2, 34),
    ),
    new Book(
      title: '1984',
      author: 'George Orwell',
      pagesRead: 324,
      totalPages: 543,
      bookImage: Icons.next_week,
      insertTime: DateTime(2021, 2, 23, 2, 34),
    ),
  ];

  // return the book list
  List getBooks() {
    return booksList;
  }
  int getIndex() => index;

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

  void setIndex(int data) {
    index = data;
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
