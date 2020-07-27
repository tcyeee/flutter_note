import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/pages/account/login.dart';
import 'package:fun_flutter_demo/pages/account/register_first.dart';
import 'package:fun_flutter_demo/pages/account/register_second.dart';
import 'package:fun_flutter_demo/pages/account/register_third.dart';
import 'package:fun_flutter_demo/pages/demo/15.dart';
import 'package:fun_flutter_demo/pages/demo/18.dart';
import 'package:fun_flutter_demo/pages/demo/19.dart';
import 'package:fun_flutter_demo/pages/demo/21.dart';
import 'package:fun_flutter_demo/router/router_app_bar.dart';

// 配置路由
final router = {
  '/': (context, {arguments}) => MyHomePage(),
  // 不带数据跳转
  '/toNewPageWithoutData': (context) => TagDemoSinglePage(),
  // 带数据跳转
  '/newPage': (context, {arguments}) =>
      TagDemoSinglePage2(arguments: arguments),
  // 带数据跳转动态页
  '/toNewPage': (context, {arguments}) =>
      TagWithDataPageSyn(arguments: arguments),

  // account
  '/toLogin': (context) => LoginPage(),
  '/toRegisterFirst': (context) => RegisterFister(),
  '/toRegisterSecond': (context) => RegisterSecond(),
  '/toRegisterThird': (context) => RegisterThird(),
  '/toAppbarDemo': (context) => AppbarDemo(),
};

// ignore: missing_return, top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = router[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
