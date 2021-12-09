
void main() {
/*
  // 数组
  List myList = ['apple','orange','banana'];

  print(myList.length); // 数组长度
  print(myList.isEmpty); // 是否为空
  print(myList.isNotEmpty); // 是否不为空
  print(myList.reversed);   // 数组翻转


  var newMyLists = myList.reversed.toList();
  print(newMyLists);

  // 添加多条数据
  myList.addAll(['watermelon','grape']);
  print(myList);

  // 查找数据，查找不到，返回-1，查找到返回索引
  var index = myList.indexOf('apple');
  print(index);


  // 移除某个值
  myList.remove('apple');
  myList.removeAt(0);
  print(myList);

  // 修改数据
  myList.fillRange(0, 2,'banana');
  // myList.fillRange(0, 2,['banana']);
  print(myList);

  // 插入值
  myList.insert(0, 'watermelon');
  myList.insertAll(1, ['grape','grape1']);
  print(myList);

  // 数组转字符串
  var listStr = myList.join(",");
  print(listStr);

  // 字符串转数组
  var str = 'apple-orange-banana';
  var list = str.split('-');
  print(list);

 */

/*
  // 集合
  var s = new Set();
  s.add("香蕉");
  s.add('apple');
  s.add("香蕉");

  print(s);
  print(s.toList());

  // 数组去重
  List myLists = ['香蕉','苹果','橘子','橙子','苹果','西瓜','香蕉','西瓜'];

  var s1 = new Set();
  s1.addAll(myLists);
  // 集合转数组
  var newLists = s1.toList();
  print(newLists);

 */

  // map

  var persion = {
    "name":"张三",
    "age":20,
    "sex":"男"
  };

  var m = new Map();
  m["name"] = "李四";
  m["age"] = 24;

  print(persion);
  print(m);

  print(persion.keys.toList());
  print(persion.values.toList());
  print(persion.entries);
  print(persion.isEmpty);
  print(persion.isNotEmpty);

  persion.addAll({"work":"数据"});

  for (var dict in persion.keys) {
    print(dict);
  }


  persion.forEach((key, value) {
    print("$key --- $value");
  });



  List myLists = [1,3,4];

  // List newList = [];
  // for(var i=0;i<myLists.length;i++) {
  //   newList.add(myLists[i]*2);
  // }
  // print(newList);

  // var newList = myLists.map((e){
  //   return e*2;
  // });
  // print(newList);

  // 判断判断条件，是否存在值是大于某个值的
  var f = myLists.any((e){
    return e > 2;
  });

  // 返回数组，判断值符合条件的数组
  // var  f = myLists.where((e){
  //   return e > 2;
  // });
  print(f);


}
