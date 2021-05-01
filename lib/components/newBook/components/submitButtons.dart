import 'package:flutter/material.dart';

class SubmitButtonsComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width*0.6,
        constraints: BoxConstraints(
            minWidth: 300,
        ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(100, 50)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  side: BorderSide(width: 2),
                ),
              ),
            ),
            onPressed: () {},
            child: Text('cancel', style: Theme.of(context).textTheme.bodyText1),
          ),
          TextButton(
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(100, 50)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(

                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
              ),
            ),
            onPressed: () {},
            child: Text('submit', style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
        ],
      ),
    );
  }
}
