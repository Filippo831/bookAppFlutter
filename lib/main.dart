import 'package:bookapp/homePage.dart';
import 'package:bookapp/newBook.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xffdedacd),
      ),
      home: HomePage(),
      routes: {
        '/main': (BuildContext context) => HomePage(),
        '/newBook': (BuildContext context) => NewBookComponent(),
      },
    );
  }
}

