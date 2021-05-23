import 'package:bookapp/components/newBook/inputForm.dart';
import 'package:flutter/material.dart';

class NewBookComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("newBook", textAlign: TextAlign.left),
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        titleSpacing: 40,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: InputFormComponent(),
            ),
          ],
        ),
      ),
    );
  }
}
