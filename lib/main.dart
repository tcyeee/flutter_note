import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/test/1.dart';
import 'package:fun_flutter_demo/test/base.dart';

main() {
  runApp(MyApp());
}

// 页面信息
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return test1();
  }
}
