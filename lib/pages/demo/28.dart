import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogDemo extends StatefulWidget {
  @override
  _DialogDemoState createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  _alertDialog() async {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text("提示信息"),
              content: Text("您确定要删除吗"),
              actions: <Widget>[
                FlatButton(
                    onPressed: () {
                      print("确定");
                      Navigator.pop(context);
                    },
                    child: Text("确定")),
                FlatButton(
                    onPressed: () {
                      print("取消");
                      Navigator.pop(context);
                    },
                    child: Text("取消"))
              ]);
        });
  }

  _alertDialog2() async {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(title: Text("title"), children: <Widget>[
            SimpleDialogOption(
                child: Text("option A"),
                onPressed: () {
                  print("a");
                }),
            Divider(),
            SimpleDialogOption(
                child: Text("option B"),
                onPressed: () {
                  print("b");
                }),
            Divider(),
            SimpleDialogOption(
                child: Text("option C"),
                onPressed: () {
                  print("c");
                })
          ]);
        });
  }

  _alertDialog3() async {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: 200,
              child: Column(children: <Widget>[
                ListTile(title: Text("kjkj")),
                Divider(),
                ListTile(title: Text("kjkj")),
                Divider(),
                ListTile(title: Text("kjkj")),
              ]));
        });
  }

  _alertDialog4() async {
    Fluttertoast.showToast(
        msg: "操作成功",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          RaisedButton(onPressed: _alertDialog, child: Text("alert弹窗")),
          RaisedButton(onPressed: _alertDialog2, child: Text("选择弹窗")),
          RaisedButton(onPressed: _alertDialog3, child: Text("底部弹窗")),
          RaisedButton(onPressed: _alertDialog4, child: Text("弹出提示")),
        ]));
  }
}
