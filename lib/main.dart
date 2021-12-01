import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return MaterialApp(
      title: '欢迎来',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('my app'),
        ),
         body: new Center(
          child: new Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}