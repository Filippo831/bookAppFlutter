import 'package:bookapp/components/newBook/components/bookImageInput.dart';
import 'package:flutter/material.dart';

class InputFormComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BookImageInputComponent(),
        ],
      ),
    );
  }
}

