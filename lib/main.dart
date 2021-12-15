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
    return Column(
      children: <Widget>[
        Text(
          "hello world",
          style: TextStyle(
              color: Colors.red,
              fontSize: 30.0,
              height: 1.8,
              background: Paint()..color = Colors.blue,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dashed),
          textAlign: TextAlign.end,
        ),
        const Text.rich(TextSpan(children: [
          TextSpan(text: "这是个红色的span", style: TextStyle(color: Colors.red)),
          TextSpan(text: "这是个蓝色的span", style: TextStyle(color: Colors.blue))
        ])),
        ElevatedButton(
          child: const Text('按钮1'),
          onPressed: () {},
        ),
        TextButton(
          child: const Text('按钮2'),
          onPressed: () {},
        ),
        OutlineButton(
          child: const Text('按钮3'),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.thumb_up),
          onPressed: () {},
        ),
        ElevatedButton.icon(
          icon: const Icon(Icons.send),
          label: const Text("发送"),
          onPressed: () {},
        ),
        const Image(
          image: AssetImage("assets/images/top1.jpeg"),
          width: 100.0,
        ),
        const Image(
          image: NetworkImage(
              "https://bkimg.cdn.bcebos.com/pic/d1a20cf431adcbef7d6228b0a9af2edda3cc9f35?x-bce-process=image/watermark,image_d2F0ZXIvYmFpa2UyMjA=,g_7,xp_5,yp_5/format,f_auto"),
          width: 100.0,
          color: Colors.blue,
          colorBlendMode: BlendMode.difference,
        ),
        const Icon(
          Icons.fingerprint,
          color: Colors.green,
          size: 80.0,
        ),
        TextField(
            autofocus: false,
            textInputAction: TextInputAction.search,
            decoration: const InputDecoration(
              labelText: "用户名",
              hintText: "用户名或邮箱",
              prefixIcon: Icon(Icons.person),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue)
              )
            ),
            onChanged: (v) {
              print("onChange: $v");
            }),
        const TextField(
          autofocus: false,
          decoration: InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              prefixIcon: Icon(Icons.lock)),
          obscureText: true,
        ),
      ],
    );
  }
}
