// 循环
main() {

  // ++ --
  var a = 10;
  a++;
  print(a); // 11
  print(a++); // 11
  print(a); // 12

  var b = 20;
  print(b++); // 20
  print(b); // 21
  print(++b); // 22
  print(b); // 22

  // for 循环

  for (var i = 0;i<100;i++) {
    print(i);
  }

  List l1 = ['张三','李四','王五'];

  for (var i = 0 ; i < l1.length; i++) {
    var name = l1[i];
    print(name);
  }


  List l2 = [
    {"title":"新闻1"},
    {"title":"新闻2"},
    {"title":"新闻3"},
    {"title":"新闻4"}

  ];

  for (var i = 0 ; i < l2.length ; i++) {
    print(l2[i]["title"]);
  }


  // while
  int i = 1;
  while(i<=10) {
    print(i);
    i++;
  }
  // do while
  do{
    print(i);
    i++;
  }while(i < 20);

  // continue
  for (var i = 0 ; i<10;i++) {
    if (i == 4) {
      continue;
    }
    print(i);
  }
  // break
  for (var i = 0 ; i<10;i++) {
    if (i == 4) {
      break;
    }
    print(i);
  }



}