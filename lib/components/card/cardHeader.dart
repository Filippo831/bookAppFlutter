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
      height: size.height / 7,
      constraints: BoxConstraints(
        minHeight: 60,
        maxHeight: 100,
      ),
      child: ListTile(
          dense:false,
        leading: Column(
          children: [
            Expanded(
                flex:1,
              child: Container(
                  padding: EdgeInsets.zero,
                width: size.width * 0.15,
                constraints: BoxConstraints(
                  maxWidth: 60,
                ),
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Icon(bookImage),
              ),
            ),
          ],
        ),
        title: Text(
          title,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline5,
        ),
        subtitle: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                author,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "${pagesRead} / ${totalPages}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        isThreeLine: true,
      ),
    );
    //return Container(
    //decoration: BoxDecoration(
    //color: Color(0xff555555),
    //borderRadius: BorderRadius.all(Radius.circular(15)),
    //boxShadow: [
    //BoxShadow(
    //color: Color(0x55555555),
    //offset: Offset(6.0, 6.0),
    //blurRadius: 5.0,
    //),
    //],
    //),
    //padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
    //margin: EdgeInsets.symmetric(vertical: 10),
    //height: size.height / 7,
    //constraints: BoxConstraints(
    //minHeight: 60,
    //maxHeight: 100,
    //),
    //width: size.width * 0.8,
    //child: Row(
    //children: [
    //// left image
    //Container(
    //width: size.width * 0.15,
    //constraints: BoxConstraints(
    //maxWidth: 60,
    //),
    //height: size.height,
    //margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
    //decoration: BoxDecoration(
    //color: Colors.red,
    //borderRadius: BorderRadius.all(Radius.circular(15)),
    //),
    //child: Icon(bookImage),
    //),
    //// texts in the middle
    //Container(
    //margin: EdgeInsets.symmetric(vertical: 10),
    //child: Column(
    //crossAxisAlignment: CrossAxisAlignment.start,
    //children: [
    //Text(
    //title,
    //overflow: TextOverflow.ellipsis,
    //textAlign: TextAlign.left,
    //style: Theme.of(context).textTheme.headline5,
    //),
    //Spacer(),
    //Text(
    //author,
    //overflow: TextOverflow.ellipsis,
    //textAlign: TextAlign.left,
    //style: Theme.of(context).textTheme.bodyText1,
    //),
    //Spacer(),
    //Text(
    //"${pagesRead} / ${totalPages}",
    //overflow: TextOverflow.ellipsis,
    //textAlign: TextAlign.left,
    //style: Theme.of(context).textTheme.bodyText1,
    //),
    //],
    //),
    //),
    //Spacer(),
    //// read icon
    //Container(
    //padding: EdgeInsets.all(0),
    //child: TextButton(
    //onPressed: () {},
    //style: ButtonStyle(
    //backgroundColor:
    //MaterialStateProperty.all<Color>(Colors.transparent),
    //side: MaterialStateProperty.all<BorderSide>(
    //BorderSide.none,
    //),
    //shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //RoundedRectangleBorder(
    //borderRadius: BorderRadius.all(Radius.circular(40)),
    //side: BorderSide(color: Colors.transparent),
    //),
    //),
    //),
    //child: Icon(
    //Icons.book,
    //size: 32,
    //color: Theme.of(context).primaryColor,
    //),
    //),
    //),
    //],
    //),
    //);
  }
}
