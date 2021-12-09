
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '13.1luyou_page2.dart';
class HomePage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }

}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ElevatedButton(onPressed: (){

          Navigator.pushNamed(context, "/search",arguments: {"title":"这是我的标题"});

        }, child: Text("跳转搜索页"),)
      ],
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}