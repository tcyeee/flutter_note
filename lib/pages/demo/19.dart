import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TagWithDataPageSyn extends StatefulWidget {
  Map arguments;

  TagWithDataPageSyn({Key key, this.arguments});

  @override
  _TagWithDataPageSynState createState() =>
      _TagWithDataPageSynState(arguments: this.arguments);
}

class _TagWithDataPageSynState extends State<TagWithDataPageSyn> {
  Map arguments;

  _TagWithDataPageSynState({Key key, this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("带值跳转到动态页")),
        body: Center(
          child: Text("这是带值跳转到动态页面->目标页面"),
        ));
  }
}
