// 类
import '5.1Animal.dart';
class Persion extends Object {

  String name;
  int age;
  getInfo() {
    print("姓名：${this.name},年龄：${this.age}");
  }

  void setInfo(String name,int age) {
    this.name = name;
    this.age = age;
  }

  //默认 构造函数
  // Persion() {
  //   print("这是构造函数方法");
  // }

  // 传参写法
  // Persion(String name,int age) {
  //   this.name = name;
  //   this.age = age;
  //
  // }

  // 构造函数
  Persion(this.name,this.age);

  // 匿名构造函数
  Persion.persion() {
    // 我是命名构造函数
    print("我是命名构造函数");
  }

  Persion.setInfo(String name,int age) {
    this.name = name;
    this.age = age;
  }


}


void main() {

  // 实例化
  // Persion person = Persion();
  // person.getInfo();
  // person.setInfo("张三", 12);
  // person.getInfo();


  // Persion persion = Persion("名字", 30);
  // persion.getInfo();


  Persion p1 = new Persion("小李", 20);
  p1.getInfo();

  Persion p2 = new Persion.persion();
  p2.getInfo();

  Persion p3 = new Persion.setInfo("小王", 30);
  p3.getInfo();


  // Animal a1 = new Animal("小马", "马科",22);
  // print(a1);
  // print(a1.name);
  //
  // print(a1.age);
  //
  // a1.setName = "小牛";
  // print(a1.name);

  Animal a2 = new Animal();
  print(a2);

}



