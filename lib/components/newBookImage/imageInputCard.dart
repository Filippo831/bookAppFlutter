import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bookapp/blocks/imageProvider.dart';

class ImageInputCardComponent extends StatelessWidget {
  final String title;
  ImageInputCardComponent({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
    );
  }
}
