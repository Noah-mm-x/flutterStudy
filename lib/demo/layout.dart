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
          title: const Text('标题1'),
          actions: const <Widget>[
            UnconstrainedBox(
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation(Colors.white70),
                ),
              ),
            )
          ],
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
    //线性布局
    // return Container(
    //   color: Colors.green,
    //   child: Padding(
    //     padding: const EdgeInsets.all(16.0),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       mainAxisSize: MainAxisSize.max,
    //       children: <Widget>[
    //         Container(
    //           color: Colors.red,
    //           child: Column(
    //             mainAxisSize: MainAxisSize.max,
    //             children: const <Widget>[
    //               Text("hello"),
    //               Text("World"),
    //             ],
    //           ),
    //         )
    //       ],
    //     )
    //   ),
    // );
    //  弹性布局
    // return Column(
    //   children: <Widget>[
    //     Flex(
    //       direction: Axis.horizontal,
    //       children: <Widget>[
    //         Expanded(
    //           flex: 1,
    //           child: Container(
    //             height: 30.0,
    //             color: Colors.red,
    //           ),
    //         ),
    //         Expanded(
    //           flex: 2,
    //           child: Container(
    //             height: 30.0,
    //             color: Colors.green,
    //           ),
    //         ),
    //       ],
    //     ),
    //     Padding(
    //       padding: const EdgeInsets.only(top: 20.0),
    //       child: SizedBox(
    //         height: 100.0,
    //         child: Flex(
    //           direction: Axis.vertical,
    //           children: <Widget>[
    //             Expanded(
    //               flex: 2,
    //               child: Container(
    //                 height: 30.0,
    //                 color: Colors.red,
    //               ),
    //             ),
    //             const Spacer(
    //               flex: 2,
    //             ),
    //             Expanded(
    //               flex: 2,
    //               child: Container(
    //                 height: 30.0,
    //                 color: Colors.blue,
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     )
    //   ],
    // );
    // 流式布局
    // return Wrap(
    //   //水平方向
    //   spacing: 8.0,
    //   //垂直方向
    //   runSpacing: 14.0,
    //   alignment: WrapAlignment.center,
    //   children: const <Widget>[
    //     Chip(
    //       avatar: CircleAvatar(
    //         backgroundColor: Colors.blue,
    //         child: Text("A"),
    //       ),
    //       label: Text('aaa'),
    //     ),
    //     Chip(
    //       avatar: CircleAvatar(
    //         backgroundColor: Colors.green,
    //         child: Text("B"),
    //       ),
    //       label: Text("bbb"),
    //     ),
    //     Chip(
    //       avatar: CircleAvatar(
    //         backgroundColor: Colors.red,
    //         child: Text("C"),
    //       ),
    //       label: Text("ccc"),
    //     ),
    //     Chip(
    //       avatar: CircleAvatar(
    //         backgroundColor: Colors.yellow,
    //         child: Text("D"),
    //       ),
    //       label: Text("dd"),
    //     ),
    //   ],
    // );
    //  层叠布局
    // return ConstrainedBox(
    //   constraints: const BoxConstraints.expand(),
    //   child: Stack(
    //     alignment: Alignment.center,
    //     //未定位widget占满Stack整个空间
    //     fit: StackFit.expand,
    //     children: <Widget>[
    //       Container(
    //         child: const Text(
    //           'haha',
    //           style: TextStyle(color: Colors.red, fontSize: 24.0),
    //         ),
    //       ),
    //       const Positioned(
    //         left: 20.0,
    //         child: Text("left20"),
    //       ),
    //       const Positioned(
    //         top: 20.0,
    //         child: Text("top20"),
    //       ),
    //     ],
    //   ),
    // );
    return Container(
      height: 120.0,
      width: 120.0,
      color: Colors.indigoAccent,
      child: const Align(
        // alignment: Alignment.topRight,
        alignment: FractionalOffset(0.2, 0.6),
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}
