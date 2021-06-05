import 'package:bookapp/components/generalComponents/bigButton.dart';
import 'package:flutter/material.dart';

class ReadPageButtonsComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigButtonComponent(
                text: 'ciao',
                theme: Theme.of(context).textTheme.bodyText1,
                bgColor: Colors.transparent,
                action: () {
                  Navigator.pop(context);
                }),
            BigButtonComponent(
                text: 'ciao',
                theme: Theme.of(context).textTheme.bodyText2,
                action: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
