import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '03.dart';
import 'mock.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List data = mock().listData['data'];
    data = data.length > 2 ? data.sublist(0, 2) : data;

    return Container(child: Column(children: _getinfo(data)));
  }
}

List<Widget> _getinfo(List data) {
  return data.map((value) {
    return Card(
        color: Colors.grey[100],
        child: Column(children: <Widget>[
          AspectRatio(
              aspectRatio: 16 / 9,
              child:
                  Image(image: NetworkImage(value['img']), fit: BoxFit.cover)),
          ListTile(
              leading: getAvatar(),
              title: Text(value['title']),
              subtitle: Text(value['reamrk']))
        ]));
  }).toList();
}
