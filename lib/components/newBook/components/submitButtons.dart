import 'package:bookapp/blocks/bookProvider.dart';
import 'package:bookapp/components/generalComponents/bigButton.dart';
import 'package:flutter/material.dart';

class SubmitButtonsComponent extends StatefulWidget {
  final bookList;
  const SubmitButtonsComponent({
    Key key,
    this.bookList,
  }) : super(key: key);

  @override
  _SubmitButtonsComponentState createState() => _SubmitButtonsComponentState();
}

class _SubmitButtonsComponentState extends State<SubmitButtonsComponent> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      constraints: BoxConstraints(
        minWidth: 300,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BigButtonComponent(
              text: 'cancel',
              theme: Theme.of(context).textTheme.bodyText1,
              action: () {
                Navigator.pop(context);
              },
              bgColor: Colors.transparent,
          ),
          BigButtonComponent(
              text: 'submit',
              theme: Theme.of(context).textTheme.bodyText2,
              action: () {
                widget.bookList.addBook();
                Navigator.pop(context);
              },
          ),
        ],
      ),
    );
  }
}
