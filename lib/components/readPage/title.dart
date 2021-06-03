import 'package:flutter/material.dart';

class ReadPageTitleComponent extends StatelessWidget {
  const ReadPageTitleComponent({
    Key key,
    this.selectedBook,
  }) : super(key: key);

  final selectedBook;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Column(
              children: [
                Text(selectedBook.title, style: Theme.of(context).textTheme.bodyText1,),
                Text(selectedBook.author, style: Theme.of(context).textTheme.bodyText1),
              ],
          ),
        ),
    );
  }
}
