import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoWithData20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
            child: Text("带值跳转到一个动态单页面"),
            onPressed: () {
              // 不带值跳转
              Navigator.pushNamed(context, '/toNewPage',
                  arguments: {"id": 123});
            }));
  }
}
