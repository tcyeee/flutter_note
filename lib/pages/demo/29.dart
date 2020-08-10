import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataDemo extends StatefulWidget {
  @override
  _DataDemoState createState() => _DataDemoState();
}

class _DataDemoState extends State<DataDemo> {
  String title = '';

  // get获取数据
  void _getData() async {
    String url = "http://jsonplaceholder.typicode.com/posts/55";
    var result = await http.get(url);
    if (result.statusCode == 200) {
      Map jsonResponse = convert.jsonDecode(result.body);
      String itemCount = jsonResponse['title'];
      setState(() {
        this.title = itemCount;
      });
    }
  }

  // post获取数据
  void _getDataPost() async {
    Map infod = {"phoneNumber": "15927019642", "password": "MTIzNDU2"};
    String url = "http://127.0.0.1:2302/main/login/userPassword";

    var result = await http.post(url, body: convert.jsonEncode(infod));
    if (result.statusCode == 200) {
      Map jsonResponse = convert.jsonDecode(result.body);
      print(jsonResponse.toString());
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(this.title),
        RaisedButton(
          child: Text("Get请求数据"),
          onPressed: () {
            _getData();
          },
        ),
        RaisedButton(
          child: Text("Post请求数据"),
          onPressed: () {
            _getDataPost();
          },
        ),
      ],
    ));
  }
}
