import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;


import 'package:flutter/material.dart';

class DioDateDemo extends StatefulWidget {
  @override
  _DioDateDemoState createState() => _DioDateDemoState();
}

class _DioDateDemoState extends State<DioDateDemo> {
  String title = '';

  // get获取数据
  void _getData() async {
    Response response;
    Dio dio = Dio();
    String url = "http://localhost:2302/main/account/userInfo";
    response = await dio.get(url, queryParameters: {
      "token":
          "eyJhbGciOiJIUzUxMiJ9.eyJpc3MiOiIwOTc4ZTdjMjFlYTc0MWRhYTVhYWRiMDMyZTE3MDljNiIsImF1ZCI6IjE1OTY5MjkxNjMxOTEifQ.IeGt7NNYHtCLnH7v2J3PSztGInmXrUF0BiYRt-oUPTQlilo7F5nD63Ud7A3cukduzJkfYa7jOvdWV_ARqXC_-w"
    });
    print(response.data.toString());


    var result = await http.get(url,headers: {
      "token":
      "eyJhbGciOiJIUzUxMiJ9.eyJpc3MiOiIwOTc4ZTdjMjFlYTc0MWRhYTVhYWRiMDMyZTE3MDljNiIsImF1ZCI6IjE1OTY5MjkxNjMxOTEifQ.IeGt7NNYHtCLnH7v2J3PSztGInmXrUF0BiYRt-oUPTQlilo7F5nD63Ud7A3cukduzJkfYa7jOvdWV_ARqXC_-w"
    });
    Map jsonResponse = convert.jsonDecode(result.body);
    print(jsonResponse["data"]);
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
      ],
    ));
  }
}
