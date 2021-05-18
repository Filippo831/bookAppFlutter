import 'package:bookapp/blocks/imageProvider.dart';
import 'package:bookapp/components/newBookImage/imageInputCard.dart';
import 'package:bookapp/components/newBookImage/imageInputForm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewBookImageComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var imageList = Provider.of<MyImageProvider>(context);
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
                    children: imageList.getImages().map((e) {
                        return ImageInputCardComponent(title: e.title);
                      },
                    ).toList(),
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
