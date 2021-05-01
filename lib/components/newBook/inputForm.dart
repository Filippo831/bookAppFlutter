import 'package:bookapp/components/newBook/components/bookImageInput.dart';
import 'package:bookapp/components/newBook/components/submitButtons.dart';
import 'package:bookapp/components/newBook/components/textInputs.dart';
import 'package:bookapp/blocks/bookProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class InputFormComponent extends StatefulWidget {
  @override
  _InputFormComponentState createState() => _InputFormComponentState();
}

class _InputFormComponentState extends State<InputFormComponent> {
  String title;
  String author;
  int totalPages;
  IconData bookImage;

  var bookList;

  void setTitle(String data) {
    setState(() {
      title = data;
    });
  }

  void setAuthor(String data) {
    setState(() {
      author = data;
    });
  }

  void setPages(int data) {
    setState(() {
      totalPages = data;
    });
  }

  void setImage(IconData data) {
    setState(() {
      bookImage = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    bookList=Provider.of<BookProvider>(context);
    return Container(
      child: Column(
        children: [
          BookImageInputComponent(),
          TextInputsComponent(),
          SubmitButtonsComponent(),
        ],
      ),
    );
  }
}
