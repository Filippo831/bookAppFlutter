import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class TextInputsComponent extends StatelessWidget {
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
                    decoration: InputDecoration(
                      isDense: true,
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
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Author...',
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
          ),
          Spacer(),
          Container(
            width: size.width * 0.2,
            constraints: BoxConstraints(
              minWidth: 80.0,
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
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Pages...',
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
