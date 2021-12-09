import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}
// 自定义组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("欢迎使用Flutter"),
        ),
        body: HomeContent(),
      ),
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),
    );
  }

}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Center(
      child: new Text(
        '你好Flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0,
            // color: Colors.red
            color: Color.fromRGBO(244, 233, 121, 0.5)
        ),
      ),
    );

  }

}