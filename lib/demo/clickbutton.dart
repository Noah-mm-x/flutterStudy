import 'package:flutter/material.dart';

//主入口
void main() => runApp(MyApp());

// MyApp继承StatelessWidget类,StatelessWidget无状态组件
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  //一般都是有个build，来控制构建UI界面
  Widget build(BuildContext context) {
    //MaterialApp是库的框架，通过它可以设置，应用名称、主题、语言、首页以及路由列表等
    return MaterialApp(
      title: '页面',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home是应用的首页
      home: const MyHomePage(title: '这是个标题'),
    );
  }
}

//StatefulWidget 有状态组件
//Stateful Widget至少有两个类组成，StatefulWidget类和State类
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // setState作用：通知Flutter框架，状态改变了，进而执行build方法重新构建页面
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Scaffold 是Material库提供的页面脚手架，提供了导航栏、标题以及body属性
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        //Center组件，可以将子组件对齐到屏幕中心
        body: Center(
          //Column组件，是将其所有子组件沿屏幕垂直方向依次排列
          //水平排列的是Row
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('你按下的次数：'),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              )
            ],
          ),
        ),
        //floatingActionButton 是右下角"+"按钮
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          //长按时候的提示
          tooltip: '按这么长时间干嘛',
          child: const Icon(Icons.add),
        )
    );
  }
}
