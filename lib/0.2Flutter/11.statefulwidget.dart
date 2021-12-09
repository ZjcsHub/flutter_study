// 有状态组件
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("状态组件"),
        ),
        body: HomePage(),
      ),
    );

  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  int count = 0;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Chip(label: Text("你好 $count")),
        Padding(padding: EdgeInsets.all(10),child: ElevatedButton(onPressed: () {

          setState(() {
            this.count ++;
          });



        }, child: Text("按钮"),),)


      ],


    );

  }

}
