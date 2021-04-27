import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextInputsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
      child: Column(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Title'),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Title...',
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
