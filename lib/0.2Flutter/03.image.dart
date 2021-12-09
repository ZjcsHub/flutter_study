import 'package:flutter/material.dart';

main() {
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
        body: LocalImageContent(),
      ),
      theme: ThemeData(
          primarySwatch: Colors.yellow
      ),
    );
  }

}

class LocalImageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.asset("assets/images/IMG_4931.jpg")
        ),
      ),
    );

  }
}

class ImageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            "https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Container(
        // child: Image.network(
        //     "https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",
        //   alignment: Alignment.topLeft,
        //   color: Colors.yellow,
        //   colorBlendMode: BlendMode.colorBurn,
        //   fit: BoxFit.cover,
        // ),
        
        

        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          // borderRadius: BorderRadius.all(
          //     Radius.circular(150)
          // )
          borderRadius: BorderRadius.circular(150),
          image: DecorationImage(
            image: NetworkImage("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",),
            fit: BoxFit.cover

          ),
        ),
      ),
    );
  }
}

