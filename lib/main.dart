import 'package:flutter/material.dart';
import 'package:flutter_drawer/mainPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',

      home: new MainPage(),
    );
  }
}
