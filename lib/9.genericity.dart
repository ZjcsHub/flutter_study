// 泛型 解决类 ，接口 方法的复用性，以及对不特定数据类型的支持（类型校验）


// String getData(String value) {
//   return value;
// }

// getData(value) {
//   return value;
// }

// 泛型方法
getData<T>(T value) {
  return value;
}

// 自定义泛型类
class PrintClass<T>{
  List list = <T>[];
  void add(T value) {
    this.list.add(value);
  }
  void printInfo() {
    list.forEach((element) => print(element));
  }
}

// 泛型接口
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key,T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    print("我是文件缓存get key");
  }

  @override
  void setByKey(String key,T value) {
    print("key:$key value:$value");
  }

}

class Memory<T> implements Cache<T> {
  @override
  getByKey(String key) {
    print("我是内存缓存get key");
  }

  @override
  void setByKey(String key, T value) {
    print("key:$key value:$value");
  }

}


void main() {
  print(getData(30));
  getData<String>("12");


  // 泛型类
  List list = <String>[];
  list.add("1");
  print(list);

  List list2 = [];
  list2.add(2);
  list2.add("2");
  print(list2);


  var p = PrintClass<String>();

  p.add("1");
  p.add("2");
  p.add("3");
  p.printInfo();


  var m = Memory();
  m.setByKey("key", 12);
  m.setByKey("key2", "12");
  



}