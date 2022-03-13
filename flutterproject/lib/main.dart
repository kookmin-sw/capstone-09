import 'package:flutter/material.dart';
import 'package:flutterproject/screens/loading.dart';

void main() {
  //main함수가 작동하면 MyApp을 불러옴
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      //MyApp이 실행되면서 Loading을 실행시킴
      home: Loading(),
    );
  }
}