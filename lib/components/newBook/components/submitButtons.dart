import 'package:flutter/material.dart';

class SubmitButtonsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          OutlinedButton(
            onPressed: () {},
            child: Text('cancel'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('submit'),
          ),
        ],
      ),
    );
  }
}
