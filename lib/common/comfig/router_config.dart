import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/pages/demo/01.dart';


Map getRouter(BuildContext content) {
  return {
    '/test1': (content) => test1(), //, "文字属性1"),
  };
}
