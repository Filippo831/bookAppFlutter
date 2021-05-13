import 'package:flutter/material.dart';

class CardBottomComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.book),
                Icon(Icons.block_outlined),
                Icon(Icons.more_horiz),
              ],
          )
      ),
    );
  }
}
