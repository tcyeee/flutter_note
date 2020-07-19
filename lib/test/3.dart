import 'package:flutter/material.dart';

class test3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: getAvatar(
            'http://broker-file.oss-cn-hangzhou.aliyuncs.com/temp/01b35e333-5a77-4dfa-8847-bd719f2392e4.png',
        25));
  }
}

/// 获取头像方法
/// src: 头像路径
/// size: 头像尺寸
ClipOval getAvatar(String src, double size) {
  return ClipOval(
      child: Image.network(src,
          width: size, height: size, colorBlendMode: BlendMode.darken));
}
