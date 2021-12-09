// 网格布局
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_grid.dart';

main() => runApp(MyApp());


// 垂直列表
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("网格视图"),
        ),
        body: HomeContent(),
      ),
    );

  }
}
class HomeContent extends StatelessWidget {
  List<Widget> list = [];
  HomeContent() {
    _getListData();
  }

  List<Widget> _getListData() {



    for(var i = 0;i<20;i++) {
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.blue,
        child: Text(    // Column 组件
            "这是第$i条数据",
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,

          ),
        ),
      ));
    }
    return list;

  }


  @override
  Widget build(BuildContext context) {

    // return GridView.count(
    //   crossAxisCount: 2, // 一行多少个weight
    //   children:  this._getListData(),
    //   crossAxisSpacing: 20, // 左右间隔距离
    //   mainAxisSpacing: 20, // 上下间隔距离
    //   padding: EdgeInsets.all(10),
    //   childAspectRatio: 0.7, // 宽高比
    // );
    
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20, // 左右间隔距离
        mainAxisSpacing: 20, // 上下间隔距离
        childAspectRatio: 0.7
      ),
      itemBuilder: (context,index){

      return this.list[index];

    },
    itemCount: this.list.length,
      padding: EdgeInsets.all(10),


    );

  }

}

