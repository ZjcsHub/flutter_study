// 函数

List getLists() {
  return ['111','222','333'];
}


int add(int n,int m) {
  return n+m;
}

// 1.定义一个方法，求1到这个数的和
int sumNumer(n) {
  var sum = 0;
  for (var i = 0;i<=n;i++) {
    sum += i;
  }
  return sum;
}

// 2.定义一个方法然后打印用户信息

String printUserInfo(String username,int age) {

  return "姓名：$username , 年龄:$age";

}

// 3. 可选参数
String printUserInfo1(String username,[int age,int sex]) {

  if (age != null) {
    return "姓名：$username , 年龄:$age";
  }

  if (sex != null) {
    return "姓名：$username , 性别:$sex";
  }
}

// 4.默认参数
String printUserInfo2(String username,[int age,String sex = '男']) {

  if (age != null) {
    return "姓名：$username , 年龄:$age,sex:$sex" ;
  }

  return "姓名：$username ,sex:$sex" ;
}


// 5.命名参数
String printUserInfo3(String username,{int age,String sex='男'}) {
  if (age != null) {
    return "姓名：$username , 年龄:$age,sex:$sex" ;
  }

  return "姓名：$username ,sex:$sex" ;
}

// 6.实现一个做方法参数的方法
fn1(String name) {
  print(name);
}

fn2(fuName,String name) {
  fuName(name);
}

// 8.定义一个方法 isEvenNumber 来判断一个数是否是偶数
bool isEvenNumber(int n) {
  return n%2 == 0;
}
// 定义一个方法，返回 1-n所有的偶数

List printEvenNumber(int n) {
  var list = [];
  for (var i = 1;i<=n;i++) {
    if (i%2==0) {
      list.add(i);
    }
  }
  return list;

}

// 闭包
/*
* 1.全局变量特点：全局变量常驻内存，全局变量污染全局
* 2.局部变量的特点： 不常驻内存，会被垃圾机制回收，不会污染全局
*
* */
sunNumber() {
  var a = 1;
  return(){
    a++;
    print(a);
  };
}



void main() {

  var sum = add(10, 12);
  print(sum);

  int getNum() {
    return 12;
  }

  sum = getNum();

  print(sum);


  String printUserInfo() {
    return "123";
  }

  printUserInfo();

  print(getLists());

  print(printUserInfo());

  print(printUserInfo2("username",12));

  print(printUserInfo3("username",age: 20,sex: '女'));

  fn2(fn1,"name");

  List list = [1,2,3,4,5,6];

  list.forEach((value) {
    print(value);
  });

  // 7 箭头函数
  list.forEach((value) => print(value));
  list.forEach((value) => { print(value) });

  var newLists =  list.map((e) => e>2?e*2:e);
  print(newLists);


  print(isEvenNumber(10));
  print(printEvenNumber(40));

  // 9 .匿名函数
  var printNum = (int n){
    print(123+n);
  };

  printNum(10);

  // 10 自执行方法
  ((n){
    print(n);
    print("我是自执行方法");
  })(12);

  // 方法递归

  var s = 1;
  fn(n) {
    if (n == 0) {
      return;
    }
    s *= n;
    fn(n-1);
  }

  fn(5);

  print(s);


  var b = sunNumber();
  b();
  b();




}
