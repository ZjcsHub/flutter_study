// 多行文本
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("文本组件"),
        ),
        body: RadioPage(),
      ),
    );
  }
}

// 文本框
class TextFilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TextFilePageState();
  }

}

class _TextFilePageState extends State {

  var userName = TextEditingController();
  var password = TextEditingController(text: "123456");
  @override
  void initState() {
    super.initState();

    userName.text = "Keats";

  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20),
    child: Column(
      children: [
        TextField(
          controller: userName,
          onChanged: (value){
            print("值正在改变 :$value");
          },
        ),

        SizedBox(height: 20,),
        Container(
          child: ElevatedButton(
            onPressed: () {
             print(this.userName.text);
            },
            child: Text("获取文本值"),
            onLongPress: () {
              print("普通按钮长按");
            },
          ),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "多行文本框",
            border: OutlineInputBorder()
          ),
          maxLines: 4,
        ),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
              // hintText: "密码框",
              border: OutlineInputBorder(),
            labelText: "用户名"
          ),
          obscureText: true,
        ),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
          icon: Icon(Icons.people),
            hintText:"请输入用户名"
          ),

        )
      ],
    )
    );
  }

}

// Check box
class CheckBoxPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CheckBoxPageState();
  }

}

class _CheckBoxPageState extends State {

  var flag = true;

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Checkbox(value: this.flag, onChanged: (value){
              setState(() {
                this.flag = value ?? true;
              });
            }),

          Text("这个flag：$flag"),
          ],
        ),
        CheckboxListTile(
            value: this.flag,
            onChanged: (v){
              setState(() {
                this.flag = v ?? false;
              });
            },
          title: Text("标题"),
          subtitle: Text("二级标题"),

          ),
        Divider(),
        CheckboxListTile(
          value: this.flag,
          onChanged: (v){
            setState(() {
              this.flag = v ?? false;
            });
          },
          title: Text("标题"),
          subtitle: Text("二级标题"),
          secondary: Icon(Icons.home),
        ),
      ],
    );

  }
}

// 表单
class RadioPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RadioPageState();
  }

}
class _RadioPageState extends State {

  var sex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio(value: 1, groupValue: this.sex, onChanged: (v){
              setState(() {
                this.sex = v as int;
              });
            }),
            Text("男"),
            Radio(value: 2, groupValue: this.sex, onChanged: (v){
              setState(() {
                this.sex = v as int;
              });
            }),
            Text("女"),
          ],
        ),
        Row(
          children: [
            Text(this.sex == 1 ? "男":"女")
          ],
        ),

        SizedBox(height: 30,),
        RadioListTile(value: 1, groupValue: this.sex, onChanged: (v){
          setState(() {
            this.sex = v as int;
          });
        },
          title: Text("性别男"),
          subtitle: Text("性别"),
          selected: this.sex == 1,
          // selectedTileColor: Colors.red,
        ),
        RadioListTile(value: 2, groupValue: this.sex, onChanged: (v){
          setState(() {
            this.sex = v as int;
          });
        },
          title: Text("性别女"),
          subtitle: Text("性别"),
          secondary: Icon(Icons.search),
          selected: this.sex == 2,
        ),
        Switch(value: this.sex == 1, onChanged: (v){
          setState(() {
            this.sex = v ? 1 : 2;
          });
        })
      ],
    );
  }

}


