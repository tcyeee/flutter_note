import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("regiter")),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("这是注册的第二步页面"),
              SizedBox(height: 20),
              RaisedButton(
                  child: Text("下一步"),
                  onPressed: () {
                    Navigator.pushNamed(context, '/toRegisterThird');

                    // 页面替换,这样可以直接返回到根路由
//                    Navigator.of(context)
//                        .pushReplacementNamed('/toRegisterThird');
                  })
                ])));
  }
}
