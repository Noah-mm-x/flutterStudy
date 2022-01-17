import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

//Stateless widgets 是不可变的, 这意味着它们的属性不能改变 - 所有的值都是最终的.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('标题1')),
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
    Widget d1 = const Divider(
      color: Colors.red,
    );
    Widget d2 = const Divider(
      color: Colors.green,
    );
    // return ListView.separated(
    return ListView.separated(
      itemCount: 100,
      //强制高度为50
      // itemExtent: 50.0,
      //列表构造器
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
      //  分割器构造器
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? d1 : d2;
      },
    );
  }
}
