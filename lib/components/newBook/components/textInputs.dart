import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class TextInputsComponent extends StatelessWidget {
  final Function setTitle;
  final Function setAuthor;
  final Function setPages;

  const TextInputsComponent({
    this.setTitle,
    this.setAuthor,
    this.setPages,
    Key key,
  }) : super(key: key);
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
  setTitle(text);
                      },
                      decoration: InputDecoration (
                          hintText: "Title..."
                      ),
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
                        setAuthor(text);
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
                        setPages(text);
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
