import 'package:flutter/material.dart';

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({
    Key key,
    @required this.author,
    @required this.pagesRead,
    @required this.totalPages,
  }) : super(key: key);

  final String author;
  final int pagesRead;
  final int totalPages;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            author,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Container(height: 10,),
          Text(
            "${pagesRead} / ${totalPages}",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}

