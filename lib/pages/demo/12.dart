import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SynPage2 extends StatefulWidget {
  State<StatefulWidget> createState() => SynPageState();
}

class SynPageState extends State<SynPage2> {
  List list = new List();

  Widget build(BuildContext context) {
    return Container(
        height: 300,
        padding: EdgeInsets.all(30),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(children: gedfdfdf(list)),
              RaisedButton(
                  child: Text("on press +1"),
                  onPressed: () {
                    setState(() {
                      String tmp = "+1";
                      list.add(tmp);
                      if (list.length > 10) {
                        list = new List();
                      }
                    });
                  })
            ]));
  }

  List<Widget> gedfdfdf(List data) {
    return data.map((e) {
      return Text(e.toString());
    }).toList();
  }
}
