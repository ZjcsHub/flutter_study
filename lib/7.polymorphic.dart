// 抽象类，多态，接口
/*
* Dart的抽象类：Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口
* 1.抽象类通过 abstract 关键字定义
* 2.Dart中的抽象方法不能用abstract声明，Dart中没有方法体的方法我们称为抽象方法
* 3.如果子类继承抽象类，必须实现里面的抽象方法
* 4.如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法
* 5.抽象类不能被实例化，只有继承它的子类可以
*
* extends抽象类 和 implements 区别：
* 1.如果要复用抽象类里面的方法，并且要用抽象方法约束自类的话我们就用extends继承抽象类
* 2.如果只是把抽象类当做标准的话我们就用implements实现抽象类
* */

abstract class Animal{
  // 抽象方法
  eat();
  run();
  printInfo() {
    print("我是抽象类里面的普通方法");
  }
}

class Dog extends Animal {
  @override
  eat() {
    print("dog eat");
  }

  @override
  run() {

    print("dog run");
  }

}

class Cat extends Animal {
  @override
  eat() {
    print("cat eat");
  }

  @override
  run() {
    print("cat run");
  }

}

main() {

  Dog dog = Dog();
  dog.eat();

  Cat cat = Cat();
  cat.eat();
  cat.printInfo();


  Mysql mysql = Mysql('uri');
  mysql.add();
}

/*
* 和Java一样，dart也有借口，但是和java还是有区别的
* 首先，dart的接口没有interface关键字定义接口，而是普通类或抽象类作为接口实现
* 同样的使用implements关键字实现
* 但是dart的接口有点奇怪，如果实现的类似普通类，会将普通类和抽象中的属性和方法重写一遍
* 而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现像java接口那样的形式，一般使用抽象类
* 建议使用抽象类定义接口
*
* */
// 定义 一个DB库，支持 mysql ， mssql， mongodb
abstract class DB{
  // 当做接口
  // 接口就是约定
  String uri;
  add();
  update();
  delete();
}

class Mysql implements DB {
  @override
  add() {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  update() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  String uri;

  Mysql(this.uri);

}

class MsSql implements DB {
  @override
  add() {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  update() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  String uri;

}

class MongoDb implements DB {
  @override
  add() {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  update() {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  String uri;

}