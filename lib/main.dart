import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '欢迎来',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('欢迎鸭'),
        ),
         body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}
