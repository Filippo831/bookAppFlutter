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
  var bookList;
  @override
  Widget build(BuildContext context) {
    bookList=Provider.of<BookProvider>(context);
    return Container(
      child: Column(
        children: [
          BookImageInputComponent(bookList: bookList),
          TextInputsComponent(bookList:bookList),
          SubmitButtonsComponent(bookList:bookList),
        ],
      ),
    );
  }
}
