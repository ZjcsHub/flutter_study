import 'package:flutter/material.dart';
import '13.1luyou_page2.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("路由跳转"),
        ),
        body: HomeContent(),
      ),

    );
  }
}

class HomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(onPressed: (){
      Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) {
                return SearchClass(arguments: {"title":"跳转视图",});
              }
          )
      );
    }, child: Text("点击路由跳转"));
  }
}