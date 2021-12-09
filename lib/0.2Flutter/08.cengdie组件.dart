import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("层叠组件"),
        ),
        body: HomeContext1(),
      ),
    );


  }
}

class HomeContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Stack(
        children: [
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Text('我是一个文本',
            style: TextStyle(
            fontSize: 40,
            color: Colors.white
            ),
          )
        ],
        // alignment: Alignment.bottomCenter,
        alignment: Alignment(-1,-1),
      ),
    );
  }
}

class HomeContext1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.home,size: 40,color: Colors.white,),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.search,size: 40,color: Colors.orange,),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Icon(Icons.fiber_new,size: 40,color: Colors.yellow,),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.menu,size: 40,color: Colors.blue,),
            ),
          // 定位
            Positioned(child: Icon(
              Icons.add,
              size: 40,
              color: Colors.brown,
            ),
            left: 50,
              top: 50,
            ),


          ],
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
