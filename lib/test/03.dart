import 'package:flutter/material.dart';

class test3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: 100, child: Center(child: getAvatar()));
  }
}

// 获取头像方法
Widget getAvatar(
    {String src =
        'http://broker-file.oss-cn-hangzhou.aliyuncs.com/temp/01b35e333-5a77-4dfa-8847-bd719f2392e4.png',
    double size = 40}) {
  return Container(
      height: size,
      width: size,
      child: CircleAvatar(backgroundImage: NetworkImage(src)));
// 另一种方法
//      ClipOval(
//          child: Image.network(src,
//              width: size, height: size, colorBlendMode: BlendMode.darken)));
}
