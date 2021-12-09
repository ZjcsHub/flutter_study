import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("流布局组件"),
        ),
        body: RaisedDemo(),
      ),
    );
  }
}

// RaisedButton
class RaisedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      textDirection: TextDirection.ltr,
      runAlignment: WrapAlignment.spaceBetween,
      direction: Axis.vertical,
      children: [
        MyButton("斗破苍穹", () {
          print("我被点击了");
        }),
        MyButton("斗罗大陆", () {
          print("我被点击了");
        }),
        MyButton("大主宰", () {
          print("我被点击了");
        }),
        MyButton("火影忍者", () {
          print("我被点击了");
        }),
        MyButton("海贼王", () {
          print("我被点击了");
        }),
        MyButton("龙珠", () {
          print("我被点击了");
        }),
        MyButton("斗破苍穹", () {
          print("我被点击了");
        }),
        MyButton("斗罗大陆", () {
          print("我被点击了");
        }),
        MyButton("大主宰", () {
          print("我被点击了");
        }),
        MyButton("火影忍者", () {
          print("我被点击了");
        }),
        MyButton("海贼王", () {
          print("我被点击了");
        }),
        MyButton("龙珠", () {
          print("我被点击了");
        }),   MyButton("斗破苍穹", () {
          print("我被点击了");
        }),
        MyButton("斗罗大陆", () {
          print("我被点击了");
        }),
        MyButton("大主宰", () {
          print("我被点击了");
        }),
        MyButton("火影忍者", () {
          print("我被点击了");
        }),
        MyButton("海贼王", () {
          print("我被点击了");
        }),
        MyButton("龙珠", () {
          print("我被点击了");
        }),
      ],
    );
  }
}


class MyButton extends StatelessWidget {

  final String text;
  void Function() clickAction;
  // typedef VoidCallback = void Function();
  MyButton(this.text,this.clickAction);


  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: () {
        this.clickAction();
      },
      child: Text(
        this.text
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              // 按压下去
              return Colors.red;
            }
            return Colors.yellow;
          }), foregroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.white;
        }
        return Colors.black;
      })),
    );

  }
}