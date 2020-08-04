import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fun_flutter_demo/router/router.dart';

main() => runApp(MyApp());

// 页面信息
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 国际化配置
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [const Locale('zh','CH')],
      // 去除右上角的'debug'横幅
      debugShowCheckedModeBanner: false,
      // 路由初始化时候的页面
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(primarySwatch: Colors.cyan),
    );
  }
}
