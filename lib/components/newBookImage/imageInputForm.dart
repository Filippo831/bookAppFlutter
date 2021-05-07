import 'package:flutter/material.dart';

class ImageInputFormComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: size.width * 0.6,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'titolo',
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
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
