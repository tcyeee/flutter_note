import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/module/broker_tag.dart';

class WrapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Wrap(
        spacing: 3,
        runSpacing: 3,
        children: <Widget>[
          BorkerTag("男生", Colors.grey),
          BorkerTag("女生", Colors.grey),
          BorkerTag("开心", Colors.grey),
          BorkerTag("生气", Colors.grey),
          BorkerTag("男生", Colors.grey),
          BorkerTag("男生", Colors.grey),
          BorkerTag("男生", Colors.grey),
          BorkerTag("男生", Colors.grey),
          BorkerTag("男生", Colors.grey),
          BorkerTag("男生", Colors.grey),
          BorkerTag("男生", Colors.grey),
          BorkerTag("男生", Colors.grey),
          BorkerTag("男生", Colors.grey),
        ],
      ),
    );
  }
}
