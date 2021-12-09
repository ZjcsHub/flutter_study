// 多个接口
abstract class A {
  printA();
}

abstract class B {
  printB();
}

// 实现单一接口 // 1个类实现多个接口
class C implements A,B {
  @override
  printA() {
    // TODO: implement printA
    throw UnimplementedError();
  }

  @override
  printB() {
    // TODO: implement printB
    throw UnimplementedError();
  }

}


/*
* mixins 的中文意思是混入，就是在类中混入其他功能
* 在Dart中可以使用mixins实现类似多继承的功能
* 因为mixins使用条件，随着Dart版本一直在变，这里讲Dart2.0中使用minins条件
* 1.作为mixins的类只能继承自Object，不能继承其他类
* 2.作为mixins的类不能有构造函数
* 3.一个类可以mixins多个mixins类
* 4.mixins绝不是继承，也不是接口，而是一种全新的特性
* */

// with 有点类似多继承
class D with A,B {
  @override
  printA() {
    // TODO: implement printA
    print("A");
  }

  @override
  printB() {
    // TODO: implement printB
    print("B");
  }

}

mixin E implements A,B {
  @override
  printA() {
    // TODO: implement printA
    print("A");
  }

  @override
  printB() {
    // TODO: implement printB
    print("B");
  }
}

class F with E {

}


main() {
  var d = D();
  d.printA();
  d.printB();

  var f = F();
  f.printA();
  f.printB();





}
