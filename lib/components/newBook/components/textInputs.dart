import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputsComponent extends StatefulWidget {
  final bookList;
  const TextInputsComponent({
    Key key,
    this.bookList,
  }) : super(key: key);

  @override
  _TextInputsComponentState createState() => _TextInputsComponentState();
}

class _TextInputsComponentState extends State<TextInputsComponent> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.5,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'Title',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: TextField(
                      onChanged: (text) {
                        widget.bookList.setTitle(text);
                      },
                    decoration: InputDecoration(hintText: "Title..."),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'Author',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: TextField(
                    onChanged: (text) {
                      widget.bookList.setAuthor(text);
                    },
                    decoration: InputDecoration(
                      hintText: 'Author...',
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Container(
            width: size.width * 0.2,
            constraints: BoxConstraints(
              minWidth: 100.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    'Pages',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: TextField(
                    onChanged: (text) {
                      widget.bookList.setPages(int.parse(text));
                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      hintText: 'Pages...',
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
