import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterFister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("register")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("这是注册的第一步页面"),
              SizedBox(height: 20),
              RaisedButton(
                  child: Text("下一步"),
                  onPressed: () {
                    // 页面替换,这样可以直接返回到根路由
                    Navigator.of(context)
                        .pushReplacementNamed('/toRegisterSecond');
                  })
            ])));
  }
}
