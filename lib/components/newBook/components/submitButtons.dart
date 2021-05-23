import 'package:bookapp/blocks/bookProvider.dart';
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
          TextButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(100, 50)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(width: 2),
                ),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('cancel', style: Theme.of(context).textTheme.bodyText1,),
          ),
          TextButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(100, 50)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            onPressed: () {
              widget.bookList.addBook();
              Navigator.pop(context);
            },
            child: Text(
              'submit',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ],
      ),
    );
  }
}
