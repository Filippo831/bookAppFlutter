import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:bookapp/api/imageApi.dart';

String searchInput = "";
class MyImageProvider extends ChangeNotifier {
  var imageList = fetchImages("1984");

  getImages() => imageList;

  void setSearchInputState(String value) {
    searchInput = value;
  }
}
