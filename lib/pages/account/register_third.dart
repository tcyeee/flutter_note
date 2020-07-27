import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/router/router_app_bar.dart';

class RegisterThird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("regiter")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("这是注册的第三步页面"),
              SizedBox(height: 20),
              RaisedButton(
                  child: Text("完成返回"),
                  onPressed: () {
                    // 如果之前设定了替换路由的话,现在可以直接用这个返回到主界面
                    // Navigator.pop(context);

                    // 所有路由置换为空,然后直接返回到主页面方法
                    Navigator.of(context).pushAndRemoveUntil(
                        new MaterialPageRoute(
                            builder: (context) => new MyHomePage(index: 0)),
                        (route) => route == null);
                  })
            ])));
  }
}
