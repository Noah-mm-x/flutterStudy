import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(const MyApp());

//Stateless widgets 是不可变的, 这意味着它们的属性不能改变 - 所有的值都是最终的.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('标题1')),
        body: const InfiniteListView(),
      ),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InfiniteListView extends StatefulWidget {
  const InfiniteListView({Key? key}) : super(key: key);

  @override
  _InfiniteListViewState createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  static const loadingTag = "##loading##";
  final _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _words.length,
      itemBuilder: (context, index) {
        //  如果到了表尾
        if(_words[index] == loadingTag){
        //  不足一百,再次加载数据
          if(_words.length-1<100){
            _retrieveData();
            return Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: const SizedBox(
                width: 24.0,
                height: 24.0,
                child: CircularProgressIndicator(strokeWidth: 2.0,),
              ),
            );
          }else{
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                "没有更多了",
                style: TextStyle(color: Colors.red),
              ),
            );
          }
        }
        return ListTile(title: Text(_words[index]),);
      },
      separatorBuilder: (context,index) => const Divider(height: .0,),
    );
  }

  void _retrieveData() {
    Future.delayed(const Duration(seconds: 2)).then((e) {
      setState(() {
        _words.insertAll(
            _words.length - 1,
            generateWordPairs().take(20).map((e) => e.asPascalCase).toList()
        );
      });
    });
  }
}
