// 卡片组件
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
        body: CardDemo(),
      ),
    );


  }
}

class HomeContext extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: AspectRatio(
        aspectRatio: 2.0/1.0,
        child: Container(
          color: Colors.red,
        ),
      ),
    );

  }

}

class CardContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text("张三",style: TextStyle(
                  fontSize: 28
                ),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxxx"),

              )
            ],
          ),

        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text("李四",style: TextStyle(
                    fontSize: 28
                ),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxxx"),

              )
            ],
          ),

        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                title: Text("王五",style: TextStyle(
                    fontSize: 28
                ),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话：xxxxx"),
              ),
              ListTile(
                title: Text("地址：xxxxx"),

              )
            ],
          ),

        )
      ],
    );
  }
}

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(aspectRatio: 16.0/9.0,
              child: Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",
              fit: BoxFit.cover,)
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",fit: BoxFit.cover,width: 60,height: 60,),


                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxx"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(aspectRatio: 16.0/9.0,
                  child: Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",
                    fit: BoxFit.cover,)
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage:  NetworkImage(
                    "https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",
                  ),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxx"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              AspectRatio(aspectRatio: 16.0/9.0,
                  child: Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",
                    fit: BoxFit.cover,)
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",fit: BoxFit.cover,width: 60,height: 60,),


                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxx"),
              ),
            ],
          ),
        ),
      ],
    );


  }
}