import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SynPageStatePage extends StatefulWidget {
  State<StatefulWidget> createState() => SynPageState();
}

class SynPageState extends State<SynPageStatePage> {
  int count = 1;

  Widget build(BuildContext context) {
    return Container(
        height: 100,
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("${count}"),
              SizedBox(width: 50),
              RaisedButton(
                  child: Text("start"),
                  onPressed: () {
                    setState(() {
                      this.count++;
                    });
                  })
            ]));
  }
}
