import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 配置路由
class AppbarDemo extends StatefulWidget {
  @override
  _AppbarDemoState createState() => _AppbarDemoState();
}

class _AppbarDemoState extends State<AppbarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[200],
          // 带有功能的按钮
          leading: IconButton(
            icon: Icon(Icons.subdirectory_arrow_left),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // 标题居中显示
          centerTitle: true,
          // 后置的图标
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          title: Text("AppBarDemo"),
        ),
        body: Center(
          child: Text("测试appbar"),
        ));
  }
}
