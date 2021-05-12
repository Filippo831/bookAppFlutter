import 'package:flutter/material.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({
    Key key,
    @required this.title,
    @required this.author,
    @required this.pagesRead,
    @required this.totalPages,
    @required this.bookImage,
  }) : super(key: key);

  final String title;
  final String author;
  final int pagesRead;
  final int totalPages;
  final bookImage;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff555555),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Color(0x55555555),
            offset: Offset(6.0, 6.0),
            blurRadius: 5.0,
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: size.width * 0.03),
      constraints: BoxConstraints(
        minHeight: 60,
      ),
      child: SingleChildScrollView(
        child: ExpansionTile(
          leading: LeadingWidget(size: size, bookImage: bookImage),
          title: Text(
            title,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline5,
          ),
          subtitle: SubtitleWidget(author: author, pagesRead: pagesRead, totalPages: totalPages),
          trailing: TrailingWidget(),
          children: [
            ListTile(
                title: Text("ciao"),
            ),
          ],
        ),
      ),
    );
  }
}

class TrailingWidget extends StatelessWidget {
  const TrailingWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.transparent),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide.none,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              side: BorderSide(color: Colors.transparent),
            ),
          ),
        ),
        child: Icon(
          Icons.book,
          size: 32,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

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

class LeadingWidget extends StatelessWidget {
  const LeadingWidget({
    Key key,
    @required this.size,
    @required this.bookImage,
  }) : super(key: key);

  final Size size;
  final bookImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.zero,
            width: size.width * 0.15,
            constraints: BoxConstraints(
              maxWidth: 60,
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Icon(bookImage),
          ),
        ),
      ],
    );
  }
}
