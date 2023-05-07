void main() {
  //声明List - 字面量
  List l1 = ['a', 'b', 'c', 1, 2, 3];
  print(l1);

  List l2 = <int>[1, 2, 3];
  print(l2);

  //通过构造函数
  var l3 = new List.empty(growable: true);
  l3.add(1);
  print(l3);

  var l4 = new List.filled(3, 5);
  print(l4);

  //扩展操作符
  var l5 = [2, ...l4];
  print(l5);

  var l6;
  var l7 = [3, ...?l6];
  print(l7);

  //列表长度
  print(l7.length);

  //反转
  print(l1.reversed.toList());

  //添加元素
  l3.addAll([4, 5, 6]);
  print(l3);

  //删除元素 制定值
  l3.remove(6);
  print(l3);

  //根据下表删除元素
  l3.removeAt(1);
  print(l3);

  //在指定位置添加元素
  l3.insert(0, 'start');
  print(l3);

  //清空
  l3.clear();
  print(l3);
  print(l3.isEmpty);

  //合并元素
  List words = ['Hello', 'World'];
  print(words.join('-'));
}
