import 'package:flutter/material.dart';

// statelessWidget 无状态组件,状态不可改变的widget
// statefulWidget 有状态组件,持有状态可以在widget的生命周期中改变
class test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'hello',
      textDirection: TextDirection.rtl,
      style: TextStyle(color: Colors.red, fontSize: 50.0),
    ));
  }
}
