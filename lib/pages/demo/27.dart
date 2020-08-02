import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormDamo extends StatefulWidget {
  @override
  _FormDamoState createState() => _FormDamoState();
}

class _FormDamoState extends State<FormDamo> {
  var _username = new TextEditingController();
  var _password = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _username.text = 'tcyeee';
    _password.text = 'tcyeee';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          TextField(
              controller: _username,
              decoration: InputDecoration(hintText: "请输入用户名称")),
          SizedBox(height: 10),
          TextField(
              obscureText: true,
              controller: _password,
              decoration: InputDecoration(hintText: "请输入密码")),
          SizedBox(height: 10),
          Container(
              width: double.infinity,
              child: RaisedButton(
                  color: Colors.red[100],
                  onPressed: () {
                    print(_username.text);
                    print(_password.text);
                  },
                  child: Text("登录"))),
        ]));
  }
}
