import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("小demo"),
        ),
        body: Demo(),
      ),
    );
  }
}

class Demo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DemoState();
  }
}

class _DemoState extends State {
  // 男：false 女: true
  var sex = false;

  // 用户名
  var userName = TextEditingController();

  void _setSex(v) {
    setState(() {
      this.sex = v;
    });
  }

  List hobby = [
    {"checked":true,"title":"吃饭"},
    {"checked":false,"title":"睡觉"},
    {"checked":true,"title":"喝水"},
    {"checked":false,"title":"读书"},
    {"checked":true,"title":"写代码"},
  ];

  List<Widget> _getHobbyData() {
    List<Widget> l = [];
    for (var dict in hobby) {
      l.add(
       Row(
         children: [
           Checkbox(value: dict["checked"], onChanged: (value){
             setState(() {
               dict["checked"] = value ?? true;
             });
           }),
           Text(dict["title"])
         ],
       )

      );
    }
    return l;

  }

  void _buttonAction() {

  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            decoration:
                InputDecoration(
                  labelText:"用户名"
                ),
            controller: this.userName,
          ),
          Row(
            children: [
              Text("男"),
              Radio(
                  value: false,
                  groupValue: this.sex,
                  onChanged: _setSex),
              Text("女"),
              Radio(
                  value: true,
                  groupValue: this.sex,
                  onChanged: _setSex),
            ],
          ),

    Wrap(
    spacing: 10,
    runSpacing: 10,
    textDirection: TextDirection.ltr,
    runAlignment: WrapAlignment.spaceBetween,
    direction: Axis.vertical,
    children: _getHobbyData(),
    ),



          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container(
                height: 60,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextButton(
                  onPressed: _buttonAction,
                  child: Text("提交"),

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
        ],
      ),
    );
  }
}
