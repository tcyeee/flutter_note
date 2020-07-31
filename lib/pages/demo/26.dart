import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: double.maxFinite),
          RaisedButton(
              child: Text("凸起按钮"),
              onPressed: () {
                print("凸起按钮");
              }),
          SizedBox(height: 20),
          Container(
              height: 30,
              width: 200,
              child: RaisedButton(
                  elevation: 4,
                  splashColor: Colors.green[100],
                  color: Colors.red[100],
                  textColor: Colors.black54,
                  child: Text("固定大小按钮"),
                  onPressed: () {
                    print("凸起按钮");
                  })),
          SizedBox(height: 20),
          Container(
              height: 30,
              width: double.maxFinite,
              margin: EdgeInsets.all(10),
              child: RaisedButton(
                  elevation: 4,
                  splashColor: Colors.green[100],
                  color: Colors.red[100],
                  textColor: Colors.black54,
                  child: Text("自适应按钮"),
                  onPressed: () {
                    print("凸起按钮");
                  })),
          SizedBox(height: 20),
          Container(
              height: 30,
              width: double.maxFinite,
              margin: EdgeInsets.all(10),
              child: RaisedButton.icon(
                  icon: Icon(Icons.search, size: 18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 4,
                  label: Text("搜索"),
                  splashColor: Colors.green[100],
                  color: Colors.red[100],
                  textColor: Colors.black54,
                  onPressed: () {
                    print("凸起按钮");
                  })),
          SizedBox(height: 20),
          FlatButton(
            color: Colors.red[100],
            textColor: Colors.black54,
            child: Text("扁平按钮"),
            onPressed: () {},
          ),
          SizedBox(height: 20),
          OutlineButton(
            textColor: Colors.black54,
            color: Colors.yellow,
            child: Text("边框按钮"),
            onPressed: () {},
          ),
        ]);
  }
}
