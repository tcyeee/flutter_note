import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoSinglePage extends StatelessWidget {
  Widget content;
  String title;

  DemoSinglePage(Widget content, String title) {
    this.content = content;
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title)), body: content);
  }
}
