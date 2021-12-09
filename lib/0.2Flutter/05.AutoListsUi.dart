// 动态列表
import 'package:flutter/material.dart';

main() => runApp(MyApp());


// 垂直列表
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("列表视图"),
        ),
        body: HomeContent2(),
      ),
    );

  }
}

class HomeContent extends StatelessWidget {


  // 自定义数据
  List<Widget> _getData() {
    List<Widget> list = [];

    for (var i = 0 ; i < 20 ; i++) {

      list.add(ListTile(
              title: Text("我是列表"),
            ));

    }
    return list;
  }


  @override
  Widget build(BuildContext context) {

    return ListView(
      children: this._getData(),
    );

  }
}

class HomeContent2 extends StatelessWidget {

  List list = [];
  HomeContent2() {
    for (var i = 0 ; i < 20 ; i++) {

      list.add(ListTile(
        title: Text("我是列表$i"),
      ));

    }
  }

  Widget _getBuilder(context,index) {
    return ListTile(
      title: Text("我是列表 $index"),
    );
  }

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: this.list.length,
      // itemBuilder: (context,index){
      //   return this.list[index];
      // },
      itemBuilder: this._getBuilder,
    );

  }
}