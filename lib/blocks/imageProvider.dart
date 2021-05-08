import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

String searchInput = "";
class MyImageProvider extends ChangeNotifier {
  final List images = [];

  List getImages() => images;

  void setSearchInputState(String value) {
    searchInput = value;
  }
}
