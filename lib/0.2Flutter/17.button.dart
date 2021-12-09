// 按钮组件

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '17.luyou_class.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("按钮组件"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("普通按钮");
                },
                child: Text("普通按钮"),
                onLongPress: () {
                  print("普通按钮长按");
                },
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  print("颜色按钮点击");
                },
                child: Text("颜色按钮"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      // 按压下去
                      return Colors.red;
                    }
                    return Colors.yellow;
                  }),
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }
                    return Colors.black;
                  }),
                  shadowColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.pink),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: () {
                  print("OutlinedButton 点击");
                },
                child: Text("这是Outlined按钮"),
                onLongPress: () {
                  print("长按");
                },
              ),
              SizedBox(
                width: 10,
              ),
              TextButton(
                  onPressed: () {
                    print("文本按钮点击");
                  },
                  child: Text("文本按钮")),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Expanded(child: Container(
                     height: 60,
                     margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                     child: TextButton(
                       onPressed: () {
                         print("颜色按钮点击");
                       },
                       child: Text("颜色按钮"),

                       style: ButtonStyle(
                         backgroundColor:
                         MaterialStateProperty.resolveWith((states) {
                           if (states.contains(MaterialState.pressed)) {
                             // 按压下去
                             return Colors.yellow;
                           }
                           return Colors.red;
                         }),
                         foregroundColor:
                         MaterialStateProperty.resolveWith((states) {
                           if (states.contains(MaterialState.pressed)) {
                             return Colors.white;
                           }
                           return Colors.black;
                         }),
                         shadowColor: MaterialStateProperty.resolveWith(
                                 (states) => Colors.pink),
                         shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(

                           side: BorderSide.none,
                           borderRadius: BorderRadius.all(Radius.circular(30.0)),
                         )),
                         overlayColor: MaterialStateProperty.resolveWith((states) => Colors.black)
                       ),
                     ),
                   ))
                 ],
               ),
              ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.search), label: Text("搜索")),
              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.fromLTRB(0, 64, 0, 0),
                child: InkWell(
                  onTap: (){
                    print("Inkwell 点击");
                  },
                  child: Image(image: AssetImage('assets/images/IMG_4931.jpg'),fit: BoxFit.cover,),
                ),
              ),

              ButtonBar(
                children: [
                  TextButton(onPressed: (){}, child: Text("日")),
                  TextButton(onPressed: (){}, child: Text("周")),
                  TextButton(onPressed: (){}, child: Text("月")),
                ],
              )

            ],
          )),
      onGenerateRoute: routeFactory,
    );
  }
}
