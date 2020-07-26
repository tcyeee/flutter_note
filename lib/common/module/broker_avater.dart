import 'package:flutter/cupertino.dart';

final double big = 80;
final double defult = 45;
final double small = 25;

/// 获取头像方法
/// src: 头像路径
/// size: 头像尺寸
ClipOval getAvatar(String src, double size) {
  return ClipOval(
      child: Image.network(src,
          width: size, height: size, colorBlendMode: BlendMode.darken));
}
