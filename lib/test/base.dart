import 'package:flutter/material.dart';

class App extends StatelessWidget {
  /// 这里是所有组件的的父类,可以用来设置一些全局的参数
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /// 这个参数用来去除右上角的'debug'横幅
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      /// 这里使用了定义的全局主题
//      theme: themeModel.themeData(),
      home: MyHomePage(title: '测试项目'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
