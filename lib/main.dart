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
          backgroundColor: Color(0xff343434),
          primaryColor: Color(0xffdedacd),
          accentColor: Color(0xff505050),
          iconTheme: IconThemeData(
              color: Color(0xffdedacd),
          ),
          buttonTheme: ButtonThemeData(buttonColor: Color(0xffdedacd)),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xffdedacd)),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(
                          color: Color(0xffdedacd),
                      )
                  )
              ),
          ),
      ),
      home: HomePage(),
      routes: {
        '/main': (BuildContext context) => HomePage(),
        '/newBook': (BuildContext context) => NewBookComponent(),
      },
    );
  }
}

