import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '标题',
      //用于指定那个路由为应用的首页
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.blue,
      ),
      //onGenerateRoute 只会对命名路由生效
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          final String? routerName = settings.name;
          print(routerName);
          if (routerName == "new_route") {
            return const UnKnown();
          }
          return const UnKnown();
        });
      },
      //注册路由
      routes: {
        "/": (context) => const RouterContent(),
        //把下面注释掉，才会执行onGenerateRoute
        "new_route": (context) => const NewRoute(text: '哈哈')
      },

      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => const UnKnown());
      },
      // home: const RouterContent(),
    );
  }
}

//这里按官网写法会报错Navigator operation requested with a context that does not include a Navigat
//需要包裹如下代码，才可正确执行
class RouterContent extends StatefulWidget {
  const RouterContent({Key? key}) : super(key: key);

  @override
  _RouterContent createState() => _RouterContent();
}

class _RouterContent extends State<RouterContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('我是首页'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('hahahaha'),
          ElevatedButton(
            child: const Text('打开新页面'),
            // style: ButtonStyle(
            //     textStyle: MaterialStateProperty.all(
            //       const TextStyle(fontSize: 18.0, color: Colors.blue),
            //     )
            // ),
            onPressed: () async {
              var result = await Navigator.of(context)
                  .pushNamed("new_route", arguments: "hi");
              // var result = await Navigator.push(
              //   context,
              //   // MaterialPageRoute 继承自 PageRoute 类
              //   // PageRoute是个抽象类，表示占有整个屏幕空间的一个路由页面
              //   // 包括了路由构建以及切换时过渡动画的相关接口和属性
              //   MaterialPageRoute(
              //       builder: (context) {
              //         return const NewRoute(
              //             text: "我是提示耶"
              //         );
              //       }
              //   ),
              // );
              // print("路由返回值：$result");
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) {
              //       return const NewRoute();
              //     })
              // );
            },
          )
        ],
      ),
    );
  }
}

class NewRoute extends StatelessWidget {
  const NewRoute({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    //获取路由参数
    var args = ModalRoute.of(context)!.settings.arguments;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: const Text("新路由"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(text),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, "我是返回值"),
              child: const Text("返回"),
            )
          ],
        ),
      ),
    );
  }
}

class UnKnown extends StatelessWidget {
  const UnKnown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('404')),
      body: const Center(
        child: Text("404"),
      ),
    );
  }
}
