import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/test/mock.dart';

class ListSyn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          alignment: Alignment(0, 0),
          height: 200,
          color: Colors.red[100],
          child: Text("hello",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w600))),
      SizedBox(height: 5),
      Row(children: <Widget>[
        Expanded(
            flex: 2,
            child: Container(
                height: 140,
                child: Image.network(
                    "http://tcyeee.oss-cn-hangzhou.aliyuncs.com/img/WLOP-artwork-women-digital-art-archer-green-eyes-depth-of-field-freckles-bow-arrows-brunette-Ghost-Blade-fantasy-art-long-hair-anime-anime-girls-painting-1223119.jpg",
                    fit: BoxFit.cover))),
        Expanded(
            flex: 1,
            child: Container(
                padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                height: 140,
                child: ListView(children: <Widget>[
                  Container(
                      height: 67,
                      child: Image.network(
                          "http://tcyeee.oss-cn-hangzhou.aliyuncs.com/img/%E9%AB%98%E5%B1%B1%E6%98%9F%E7%A9%BA%E5%94%AF%E7%BE%8E%E8%83%8C%E6%99%AF4k%E7%AE%80%E7%BA%A6%E5%A3%81%E7%BA%B8_%E5%BD%BC%E5%B2%B8%E5%9B%BE%E7%BD%91.jpg",
                          fit: BoxFit.cover)),
                  SizedBox(height: 6),
                  Container(
                      height: 67,
                      child: Image.network(
                          "http://broker-file.oss-cn-hangzhou.aliyuncs.com/temp/%E4%B8%89%E4%BD%93%E6%99%BA%E5%AD%904k%E5%8A%A8%E6%BC%AB%E5%A3%81%E7%BA%B8_%E5%BD%BC%E5%B2%B8%E5%9B%BE%E7%BD%91.jpg",
                          fit: BoxFit.cover))
                ])))
      ]),
      SizedBox(height: 5),
      Container(
          alignment: Alignment(0, 0),
          height: 200,
          color: Colors.red[300],
          child: Text("hello",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w600)))
    ]);
  }
}
