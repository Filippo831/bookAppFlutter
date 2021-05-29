import 'package:flutter/material.dart';

class TrailingWidget extends StatelessWidget {
  const TrailingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/readPage');
          },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.transparent),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide.none,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              side: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
        child: Icon(
          Icons.book,
          size: 32,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

