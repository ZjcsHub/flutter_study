// 组件
import 'package:flutter/material.dart';

main() => runApp(MyApp());


// 垂直列表
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("网格视图"),
        ),
        body: DemoLayOut(),
      ),
    );

  }
}
// padding
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2,
    children: [
      Padding(padding:
      EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Image.network("https://pic1.zhimg.com/80/v2-0ab91ebe89d6aa1223211f8cf06fcf04_1440w.jpg",fit: BoxFit.cover,

      ),),

      Padding(padding: EdgeInsets.all(10),
        child: Image.network("https://pic1.zhimg.com/80/v2-5079ad4241e40117cb322ccbfceaf19c_1440w.jpg",fit: BoxFit.cover,),
      ),

      Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Image.network("https://pic1.zhimg.com/80/v2-0ab91ebe89d6aa1223211f8cf06fcf04_1440w.jpg",fit: BoxFit.cover,)),

      Padding(padding: EdgeInsets.all(10),
        child: Image.network("https://pic1.zhimg.com/80/v2-5079ad4241e40117cb322ccbfceaf19c_1440w.jpg",fit: BoxFit.cover,),
      ),
      Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Image.network("https://pic1.zhimg.com/80/v2-0ab91ebe89d6aa1223211f8cf06fcf04_1440w.jpg",fit: BoxFit.cover,)),

      Padding(padding: EdgeInsets.all(10),
        child: Image.network("https://pic1.zhimg.com/80/v2-5079ad4241e40117cb322ccbfceaf19c_1440w.jpg",fit: BoxFit.cover,),
      ),
      Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Image.network("https://pic1.zhimg.com/80/v2-0ab91ebe89d6aa1223211f8cf06fcf04_1440w.jpg",fit: BoxFit.cover,)),

      Padding(padding: EdgeInsets.all(10),
        child: Image.network("https://pic1.zhimg.com/80/v2-5079ad4241e40117cb322ccbfceaf19c_1440w.jpg",fit: BoxFit.cover,),
      ),
      Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Image.network("https://pic1.zhimg.com/80/v2-0ab91ebe89d6aa1223211f8cf06fcf04_1440w.jpg",fit: BoxFit.cover,)),

      Padding(padding: EdgeInsets.all(10),
        child: Image.network("https://pic1.zhimg.com/80/v2-5079ad4241e40117cb322ccbfceaf19c_1440w.jpg",fit: BoxFit.cover,),
      ),


    ],
      childAspectRatio: 0.5,
    );

  }
}


class DemoLayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [

        Container(
          height: 200,
          width: 500,
          color: Colors.black,
          child: Text('你好flutter'),
        ),


        Row(
          children: [
            Expanded(
              child: Container(
                child: Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",
                fit: BoxFit.cover,
              ),
                ),
                flex: 2,
            ),
            SizedBox(width: 10,height: 10,),
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",
                    fit: BoxFit.cover,),
                  SizedBox(height: 10,),
                  Image.network("https://lupic.cdn.bcebos.com/20191203/3016210696_14.jpg",
                    fit: BoxFit.cover,),
                  SizedBox(height: 10,),
                ],
              ),
              flex: 1,
            ),


          ],
        ),
      ],
    );

  }

}

class LayOutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // child: Row(
      //     children: [
      //     HomeContent2(Icons.home,color: Colors.blue,),
      //       HomeContent2(Icons.security_rounded,color: Colors.red,),
      //       HomeContent2(Icons.search,color: Colors.yellow,),
      //       HomeContent2(Icons.close,color: Colors.orange,),
      //     ],
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   ),


      // child: Column(
      //   children: [
      //     HomeContent2(Icons.home,color: Colors.blue,),
      //     HomeContent2(Icons.security_rounded,color: Colors.red,),
      //     HomeContent2(Icons.search,color: Colors.yellow,),
      //   ],
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // ),
      child: Row(
        children: [
          // Expanded 组件可以控制展示范围
          Expanded(child: HomeContent2(Icons.home,color: Colors.blue,),flex: 1,),
          Expanded(child: HomeContent2(Icons.security_rounded,color: Colors.red,),flex: 3,)

        ],
        // mainAxisAlignment: MainAxisAlignment.spaceBetween, // 好像没有效果了
      ),
      color: Colors.pink,
      height: 800,
      width: 400,
    );
  }
}

class HomeContent2 extends StatelessWidget {

  double? size;
  Color? color;
  IconData icon;



  HomeContent2(this.icon,{this.size=30,this.color=Colors.red});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 80,
      width: 80,
      color: this.color,
      child: Center(
        child:Icon(this.icon,size: this.size,color: Colors.white),
      ),
    );
  }
}
