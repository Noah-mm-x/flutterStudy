import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

//Stateless widgets 是不可变的, 这意味着它们的属性不能改变 - 所有的值都是最终的.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('标题'),
        ),
        body: const PageContent(),
      ),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//顶部图片
class PageContent extends StatelessWidget {
  const PageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('dd');
  }
}
