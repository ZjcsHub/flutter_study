main() {

  int a = 12;
  int b = 5;

  print(a+b);   // 加
  print(a-b);   // 减
  print(a*b);   // 乘
  print(a/b);   // 除
  print(a%b);   // 取余
  print(a~/b);  // 取整


  bool flag = false;
  print(!flag);


  var a1 = true;
  var b1 = false;

  // &&

  print(a1&&b1);

  // ||
  print(a1||b1);


  // 1.基础运算符
  int c = a+b; // 从右向左

  int d = 10;
  d ??= 23; // 表示值如果为空，使用后面的数值
  print(d);
  // 2. 复合赋值运算符
  double e = 12;
  e += 20;
  print(e);
  e *= 10;
  print(e);
  e /= 10;
  print(e);
  e -= 10;
  print(e);

  // 3.条件判断
  if (flag) {
    print('true');
  }else{
    print('false');
  }

  var score = 80;
  if (score > 90) {
    print('优秀');
  }else if (score > 70) {
    print('良好');
  }else if (score > 60){
    print('及格');
  }else{
    print('不及格');
  }

  var sex = '男';
  switch(sex){
    case '男':
      print('男');
      break;

    case '女':
      print('女');
      break;
    default:
      print('未知');
      break;
  }

  // 4.三目运算

  var s = flag == true ? 1 : 0;

  print(s);

  // 5. ?? 运算符
  var m;
  var n = m ?? 10;
  print(n);


  // 6 类型转换
  String m1 = "123";
  var myNumber = int.parse(m1);

  print(myNumber is int);

  print(double.parse(m1));

  var m2 = myNumber.toString();
  print("m2 is $m2");


  if(m1.isEmpty) {
    print("m1 空");
  }else{
    print("m1不为空");
  }


  // 7 错误处理
  try{

    var m2 = '';
    var mNum = double.parse(m2);
    print(mNum is double);

  }catch(err){
    print(0);
  }




}