import 'package:flutter/material.dart';

class BigButtonComponent extends StatelessWidget {
  BigButtonComponent({
    Key key,
    this.action,
    this.theme,
    this.bgColor,
    this.text,
  }) : super(key: key);
  final action;
  final theme;
  final bgColor;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(100, 50)),
          backgroundColor: MaterialStateProperty.all<Color>(bgColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              side: BorderSide(width: 2),
            ),
          ),
        ),
        onPressed: action,
        child: Text(
           '$text',
          style: theme,
        ),
      ),
    );
  }
}
