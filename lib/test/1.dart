import 'package:flutter/material.dart';

// statelessWidget 无状态组件,状态不可改变的widget
// statefulWidget 有状态组件,持有状态可以在widget的生命周期中改变
class test1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            alignment: Alignment.center,
            height: 300.0,
            width: 300.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.yellow,
                border: Border.all(color: Colors.red, width: 2.0)),
            child: Text('hello',
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 3.0,
                    shadows: [
                      Shadow(color: Colors.red, offset: Offset(2.0, 2.0)),
                      Shadow(color: Colors.grey, offset: Offset(-2.0, -2.0))
                    ]))));
  }
}
