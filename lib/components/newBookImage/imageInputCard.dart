import 'package:flutter/material.dart';

class ImageInputCardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
        ),
    );
  }
}
