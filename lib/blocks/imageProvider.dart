import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:bookapp/api/imageApi.dart';

String searchInput = "";
class MyImageProvider extends ChangeNotifier {
  final List imageList = fetchImages("1984");

  List getImages() => images;

  void setSearchInputState(String value) {
    searchInput = value;
  }
}
