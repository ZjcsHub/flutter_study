import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: HomeContent(),
      ),
    );

  }

}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Container(
        child: Text(
          "我是文本",
          textAlign: TextAlign.center, // 文本对齐方式
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.blue,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic, // 字体倾斜
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0
          ),
          overflow: TextOverflow.fade,
          maxLines: 1,
          textScaleFactor: 2,

        ),
        height: 300.0,
        width: 300.0,

        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.red,
            width: 1.0,
            style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.all(Radius.circular(150.0)),
          
        ),
        // padding: EdgeInsets.all(10.0),
        padding: EdgeInsets.fromLTRB(30, 20, 10, 20),
        margin: EdgeInsets.all(20),
        // transform: Matrix4.translationValues(100, 200, 0),
        // transform: Matrix4.rotationZ(-0.3),
        // transform: Matrix4.diagonal3Values(1.2, 1.2, 1),
        alignment: Alignment.bottomLeft,
      )

    );

  }
}