import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// list列表
class list1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ListTile(
          leading: Image.network(
              "http://tcyeee.oss-cn-hangzhou.aliyuncs.com/img/WLOP-artwork-women-digital-art-archer-green-eyes-depth-of-field-freckles-bow-arrows-brunette-Ghost-Blade-fantasy-art-long-hair-anime-anime-girls-painting-1223119.jpg",
              height: 70,
              width: 100,
              fit: BoxFit.cover),
          title: Text("山洪灾害预警：山东四川陕西等地可能发生", maxLines: 1),
          subtitle: Text(
              "预计，7月22日20时至7月23日20时，山东东部、四川东北部、陕西南部、青海东部等地部分地区可能发生山洪灾害（蓝色预警）",
              maxLines: 2,
              overflow: TextOverflow.ellipsis)),
      ListTile(
          leading: Image.network(
              "http://tcyeee.oss-cn-hangzhou.aliyuncs.com/img/%E9%AB%98%E5%B1%B1%E6%98%9F%E7%A9%BA%E5%94%AF%E7%BE%8E%E8%83%8C%E6%99%AF4k%E7%AE%80%E7%BA%A6%E5%A3%81%E7%BA%B8_%E5%BD%BC%E5%B2%B8%E5%9B%BE%E7%BD%91.jpg",
              height: 70,
              width: 100,
              fit: BoxFit.cover),
          title: Text("山洪灾害预警：山东四川陕西等地可能发生", maxLines: 1),
          subtitle: Text(
              "预计，7月22日20时至7月23日20时，山东东部、四川东北部、陕西南部、青海东部等地部分地区可能发生山洪灾害（蓝色预警）",
              maxLines: 2,
              overflow: TextOverflow.ellipsis)),
    ]);
  }
}
