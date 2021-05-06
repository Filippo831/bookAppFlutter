import 'package:bookapp/components/newBookImage/imageInputForm.dart';
import 'package:flutter/material.dart';

class NewBookImageComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("newBookImage", textAlign: TextAlign.left),
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        titleSpacing: 40,
      ),
      body: SafeArea(
        child: ImageInputFormComponent(),
      ),
    );
  }
}
