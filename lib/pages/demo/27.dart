import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_flutter_demo/common/mock/mock.dart';

class FormDamo extends StatefulWidget {
  @override
  _FormDamoState createState() => _FormDamoState();
}

class _FormDamoState extends State<FormDamo> {
  List data = mock().listData['data'];

  var _username = new TextEditingController();
  var _password = new TextEditingController();
  bool _flag = false;
  int _sex = 1;
  int _hasOpen = 1;
  bool _swich = false;

  @override
  void initState() {
    super.initState();
    _username.text = 'tcyeee';
    _password.text = 'tcyeee';
  }

  // 异步获取选中的日期
  DateTime _selectDate = DateTime.now();
  _showDatePicker() async {
    DateTime _result = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    setState(() {
      this._selectDate = _result == null ? DateTime.now() : _result;
    });
  }

  // 异步获取选中的时间
  TimeOfDay _selectTime = TimeOfDay.now();
  _showTimePicker() async {
    TimeOfDay _result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      this._selectTime = _result == null ? TimeOfDay.now() : _result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          TextField(
              controller: _username,
              decoration: InputDecoration(hintText: "请输入用户名称")),
          SizedBox(height: 10),
          TextField(
              obscureText: true,
              controller: _password,
              decoration: InputDecoration(hintText: "请输入密码")),
          SizedBox(height: 30),
          TextField(
            maxLength: 300,
            maxLines: 3,
            decoration: InputDecoration(
                hintText: "请输入备注信息", border: OutlineInputBorder()),
          ),
          CheckboxListTile(
            secondary: Icon(Icons.help),
            activeColor: Colors.cyan,
            value: this._flag,
            onChanged: (bool value) {
              setState(() {
                this._flag = value;
              });
            },
            selected: this._flag,
            title: Text("加珍珠"),
          ),
          Divider(),
          Row(children: <Widget>[
            Radio(
              activeColor: Colors.cyan,
              onChanged: (value) {
                setState(() {
                  this._sex = value;
                });
              },
              groupValue: this._sex,
              value: 1,
            ),
            Text("男"),
            SizedBox(width: 50),
            Radio(
              activeColor: Colors.cyan,
              onChanged: (value) {
                setState(() {
                  this._sex = value;
                });
              },
              groupValue: this._sex,
              value: 2,
            ),
            Text("女"),
          ]),
          Divider(),
          RadioListTile(
            activeColor: Colors.cyan,
            title: Text("开启权限控制"),
            subtitle: Text("开启后,一切都不一样了"),
            value: 1,
            onChanged: (v) {
              setState(() {
                this._hasOpen = v;
              });
            },
            groupValue: this._hasOpen,
            selected: this._hasOpen == 1,
            secondary: Image.network(data[3]['img']),
          ),
          RadioListTile(
            activeColor: Colors.cyan,
            title: Text("关闭权限控制"),
            subtitle: Text("关闭以后,全部消失"),
            value: 2,
            onChanged: (v) {
              setState(() {
                this._hasOpen = v;
              });
            },
            groupValue: this._hasOpen,
            selected: this._hasOpen == 2,
            secondary: Image.network(data[1]['img']),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("是否爆炸"),
              Switch(
                onChanged: (bool value) {
                  setState(() {
                    this._swich = value;
                  });
                },
                value: this._swich,
              ),
            ],
          ),
          Divider(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${formatDate(_selectDate, [yyyy,'年',mm,'月',dd,'日'])}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: _showDatePicker,
              ),
              SizedBox(width: 20),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
//                    Text("${formatDate(_selectTime, [yyyy,'年',mm,'月',dd,'日'])}"),
                    Text("${_selectTime.format(context)}"),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
                onTap: _showTimePicker,
              ),
            ],
          ),
          SizedBox(height: 20),
          Divider(),
          Container(
              width: double.infinity,
              child: RaisedButton(
                  color: Colors.red[100],
                  onPressed: () {
                    print(_username.text);
                    print(_password.text);
                  },
                  child: Text("提交"))),
        ]));
  }
}
