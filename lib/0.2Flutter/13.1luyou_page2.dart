import 'package:flutter/material.dart';

class SearchClass extends StatefulWidget {

  final arguments;

  SearchClass({this.arguments});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return SearchClassState(arguments: arguments);
  }

}

class SearchClassState extends State<SearchClass> {

  // String? title;

  final arguments;

  SearchClassState({this.arguments});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(this.arguments != null ? this.arguments["title"] : ""),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blue,
          child: Column(
            children: [
              Text("这个是新页面")
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: (){
          // 普通的返回路由
          Navigator.of(context).pop();

          // 替换路由，将要跳转的视图替换当前视图，保证视图返回时可以返回上一级页面
          // Navigator.of(context).pushReplacementNamed("routeName");

          // 返回到跟路由
          // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (content) => Tabs()), (route) => route == null)

        },

      ),
    );
  }
}