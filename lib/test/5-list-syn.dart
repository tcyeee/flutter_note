import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/test/mock.dart';

class ListSyn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        crossAxisCount: 2,
        childAspectRatio: 0.618,
        children: _getData());
  }

  List<Widget> _getData() {
    List data = mock().listData['data'];
    var templist = data.map((value) {
      return Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Container(child: Image.network(value['img'], fit: BoxFit.cover)),
            Positioned(
                bottom: 10,
                child: Text(value['title'],
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20)))
          ]);
    });
    return templist.toList();
  }
}
