import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

// single book class
class Book {
  String title;
  String author;
  int pagesRead;
  int totalPages;
  var bookImage;

  Book(
      {this.title,
      this.author,
      this.pagesRead,
      this.totalPages,
      this.bookImage});
}

// bookProvider class
class BookProvider extends ChangeNotifier {
  // book list
  final List booksList = [
    // 2 example element
    new Book(
        title: '1984',
        author: 'George Orwell',
        pagesRead: 324,
        totalPages: 543,
        bookImage: Icons.next_week),
    new Book(
        title: '1984',
        author: 'George Orwell',
        pagesRead: 324,
        totalPages: 543,
        bookImage: Icons.next_week),
  ];
  
  // return the book list 
  List getBooks() => booksList;

  // add a new book
  addBook(
    String title,
    String author,
    int pagesRead,
    int totalPages,
    var bookImage,
  ) {
    // new book variable
    Book newBook = new Book(
        title: title,
        author: author,
        pagesRead: pagesRead,
        totalPages: totalPages,
        bookImage: bookImage
    );
    // add the book to the list 
    booksList.add(newBook);
  }
}
