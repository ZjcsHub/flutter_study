class Animal extends Object{

  String name;
  String type;

  // 私有属性
  int _age;

  // Animal(this.name,this.type,this._age);

  // 另外一种构造函数
  Animal():name="小牛",type="牛牪犇",_age=20{

  }

  @override
  String toString() {
    print("调用 toString");
    return "${this.name} , ${this.type}";
  }
  // 私有方法
  _getAge() {
    print("这是私有方法");
  }


  get age{
    print("调用 get");
    return _age;
  }

  set setName(name){
    print("调用 set");
    this.name = name;
  }
}