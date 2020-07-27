import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("login")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("这是登录页面"),
              SizedBox(height: 20),
              RaisedButton(
                  child: Text("登录成功返回上一页面"),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ])));
  }
}
