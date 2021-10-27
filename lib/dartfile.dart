// 表示main方法没有返回值
void main() {

  // for (int i = 0;i<5;i++) {
  //   print(i);
  // }

  // var str = "你好 dart";
  // print(str);

  // 字符串
  String str = '你好';
  print(str);

  // 数字类型
  int num = 123;
  print(num);

  var str1 = null;
  print(str1);
  str1 = '123';
  print(str1);

  // 不可以修改的常量 const ， final
  // final 和 const区别， final 可以开始不赋值，只能赋值一次，而final不仅有const编译时的特性，最重要的是它是运行时的常量，而且final是惰性初始化，即在运行时第一次使用前才初始化
  const Age = 19;
  final age = 20;







}

