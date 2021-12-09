// list 组件

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());


// 垂直列表
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("列表视图"),
        ),
        body: HomeContent3(),
      ),
    );

  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(
            Icons.security_rounded
          ),
          title: Text("习近平将在进博会开幕式发表主旨演讲"),
          subtitle: Text(
              "新华社北京11月3日电 商务部新闻发言人高峰3日宣布：第四届中国国际进口博览会暨虹桥国际经济论坛开幕式将于11月4日在上海举行。国家主席习近平将通过视频发表主旨演讲。",
            maxLines: 2,
            style: TextStyle(
              fontStyle: FontStyle.normal,
              fontSize: 20
            ),
          ),
        ),
        ListTile(
          leading: Image.asset("assets/images/IMG_4931.jpg"),
          title: Text("习近平将在进博会开幕式发表主旨演讲"),
          subtitle: Text("新华社北京11月3日电 商务部新闻发言人高峰3日宣布：第四届中国国际进口博览会暨虹桥国际经济论坛开幕式将于11月4日在上海举行。国家主席习近平将通过视频发表主旨演讲。"),
          trailing: Image.asset("assets/images/IMG_4931.jpg"),
        ),

      ],
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.fromLTRB(0, 10, 0, 5),

    );
  }
}

class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg"),
        Container(
          height: 200,
          child: Center(
            child: Text("我是Container"),
          )
        ),
        Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg"),
        Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg"),
        Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg"),

      ],
    );


  }
}

class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FractionallySizedBox(
      child: ListView(
        children: [
          Container(
            width: 180,
            height: 180,
            color: Colors.orange,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.deepPurpleAccent,
          ),
          Container(
            width: 180,
            height: 180,
            color: Colors.yellow,
          )
        ],

        scrollDirection: Axis.horizontal,
      ),
      widthFactor: 1,
      heightFactor: 0.5,
    );




  }
}