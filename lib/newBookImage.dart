import 'package:bookapp/components/newBookImage/imageInputCard.dart';
import 'package:bookapp/components/newBookImage/imageInputForm.dart';
import 'package:flutter/material.dart';

class NewBookImageComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("newBookImage", textAlign: TextAlign.left),
        elevation: 0,
        backgroundColor: Color(0x00ffffff),
        titleSpacing: 40,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              ImageInputFormComponent(),
              Container(
                height: 30,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: GridView.count(
                    primary: false,
                    crossAxisCount: (size.width / 150).round(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: List.generate(
                      30,
                      (index) {
                        return ImageInputCardComponent();
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
