import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

//Stateless widgets 是不可变的, 这意味着它们的属性不能改变 - 所有的值都是最终的.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(),
        body: PageContent(),
      ),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//顶部图片
class PageContent extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Image.asset(
          'images/top1.jpeg',
          height: 200.0,
          fit: BoxFit.cover,
        ),
        const ListTile(
          title: Text(
            '仁王2',
            style:
                TextStyle(fontSize: 20, color: Color.fromRGBO(51, 51, 51, 1)),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: const Text(
            '仁王2作为粉丝们期盼已久的续作,和一代相比自然有不少不同之处,今天我们给大家带来了仁王2新内容介绍一览和仁王2新系统详解,感兴趣的小伙伴不要错过了,一起来看看吧。',
            style: TextStyle(
                fontSize: 14, color: Color.fromRGBO(102, 102, 102, 1)),
            softWrap: true,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(4.0)),
              border: Border.all(
                  width: 1, color: const Color.fromRGBO(238, 238, 238, 1))),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Text(
                      '关于武器的选择',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(51, 51, 51, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4.0),
                    child: const Text(
                      '作者：九张',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(102, 102, 102, 1),
                      ),
                    )
                  )

                ],
              )),
              Icon(
                Icons.star,
                color: Colors.red[500],
              ),
              const Text('12')
            ],
          ),
        )
      ],
    );
  }
}
