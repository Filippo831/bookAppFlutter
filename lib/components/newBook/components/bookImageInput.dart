import 'package:bookapp/blocks/bookProvider.dart';
import 'package:flutter/material.dart';

class BookImageInputComponent extends StatelessWidget {
  final bookList;
  const BookImageInputComponent({
    Key key,
    this.bookList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Container(
            height: 130,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
        ),
        Positioned(
          child: Center(
            child: Container(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/newBookImage');
                    },
                  child: Icon(Icons.drafts,
                      color: Theme.of(context).accentColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
