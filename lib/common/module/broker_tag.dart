// 自定义按钮组件
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BorkerTag extends StatelessWidget {
  final String name;
  final Color color;

  const BorkerTag(this.name, this.color, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(3, 0, 3, 1),
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(2))),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }
}
