import 'package:flutter/material.dart';

class LeadingWidget extends StatelessWidget {
  const LeadingWidget({
    Key key,
    @required this.size,
    @required this.bookImage,
  }) : super(key: key);

  final Size size;
  final bookImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.zero,
            width: size.width * 0.15,
            constraints: BoxConstraints(
              maxWidth: 60,
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Icon(bookImage, color: Theme.of(context).primaryColor),
          ),
        ),
      ],
    );
  }
}
