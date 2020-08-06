import 'dart:async';

import 'package:flutter/material.dart';

class DiyDialog extends Dialog {
  // 设定三秒后关闭
  _showTime(context) {
    Timer.periodic(Duration(milliseconds: 3000), (t) {
      Navigator.pop(context);
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTime(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
        ),
      ),
    );
  }
}
