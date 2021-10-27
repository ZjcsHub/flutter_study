main() {

  // 1,定义字符串
  var str = 'this is str';
  var str2 = "this is str2";
  print(str);
  print(str2);

  String str1 = 'this is str1';
  print(str1);

  var str3 = '''
  this is str3
  this is str3 desc
  this is str3 desc
  ''';

  print(str3);
  // 2.字符串拼接
  String str4 = 'this is str4';
  String str5 = 'Dart';
  print(str4 + str5);
  print('$str4 $str5');


  // 3. int 必须是整型
  int a = 123;
  // 4. double double既可以是整型，也可以是浮点型
  double b = 1.5;
  b = 55;
  print(a);
  print(b);

  // 5.运算符
  var c = a + b;
  c = a - b;
  c = a * b;
  c = a / b;
  print(c);

  // 6.布尔类型
  bool flag = true;
  bool flag1 = false;
  print(flag);
  print(flag1);

  if (flag) {
    print("真");
  }else{
    print("假");
  }

  // 7.数组
  var li = ['a','b','c'];
  print(li.length);
  print(li[0]);
  print(li);

  var l2 = new List();
  l2.add('1');
  l2.add('2');
  l2.add('3');
  print(l2);

  var l2_str = l2.toString();
  print(l2_str);

  var l3 = new List<String>();
  l3.add("z");
  l3.add("1");

  // 8.map
  var persion = {"name":"张三","age":12,"work":["程序员","外卖员"]};
  print(persion);
  print(persion["name"]);
  print(persion["work"]);

  var person1 = new Map();
  person1["name"] = "李四";
  person1["age"] = 22;
  person1["work"] = ["程序员","外卖员"];


  // 9 . is 关键词判断类型
  if (person1 is String) {
    print("persion1 是字符串");
  }else if (str5 is String) {
    print("str5 是字符串");
  }

}