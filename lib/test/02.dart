import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// 圆形的第一种处理方式
class test2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Center(
            child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(200),
                    image: DecorationImage(
                        image: NetworkImage(
                            'http://broker-file.oss-cn-hangzhou.aliyuncs.com/temp/logo.png'),
                        fit: BoxFit.contain)))));
  }
}
