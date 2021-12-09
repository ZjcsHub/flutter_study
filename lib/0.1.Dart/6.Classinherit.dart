// 静态成员操作符 继承


class Person{

  static String name = '张三';

  int age = 20;

  var sex = 3;

  Person(this.age,this.sex);

  static void show() {
    print(name);
  }

  printInfo() {

    //  可以访问静态属性 和 非静态属性

    print(name);
    print(this.age);

  }

  static void printUserInfo() {
    print(name);
    show();
  }

}

class Male extends Person {

  var work = "程序员";

  Male(int age,int sex,String work) : super(age, sex) {
    this.work = work;
  }


  @override
  set age(int _age) {
    // TODO: implement age
    super.age = _age;
  }

  @override
  // TODO: implement sex
  int get sex => super.sex;

  @override
  printInfo() {


  }

}


void main() {
  // print(Person.name);
  // Person.show();
  //
  // Person p1 = Person();
  // p1.printInfo();

  // Person.printUserInfo();

  // ? 条件运算符
  // Person p;
  // p?.printInfo();
  //
  // Person p = Person();
  // p?.printInfo();

  // is 运算符
  // Person p = Person();
  // if (p is Person) {
  //   p.age = 30;
  // }
  // p.printInfo();

  // as 运算符
  // Object p = Person();
  // (p as Person).printInfo();


  // 级联操作
  // Person p = Person();
  // p.printInfo();
  // p.age = 40;
  // p.printInfo();
  // p..age = 40
  //  ..sex = 4
  //  ..printInfo();



}