/*
Set是一个无序的，元素唯一的集合
Set有字面量和构造函数两种声明方式（字面量种用大括号）
无法通过下标取值
具有集合特有的操作

 */

void main() {
  //字面量
  var numbs = <int>{1, 2, 3};
  print(numbs);

  //构造函数
  var fruits = new Set();
  fruits.add('香蕉');
  fruits.add('苹果');
  fruits.add('橘子');
  print(fruits);
  print(fruits.toList());

  List myNumbs = [1, 2, 2, 3, 4];
  print(myNumbs.toSet()); //转Set 过滤重复值

  var cc = new Set();
  cc.addAll([1, 2, 3, 4]);

  var lb = new Set();
  lb.addAll([1, 'b', 'c', 'd']);

  //求交集
  print(cc.intersection(lb));

  //求并集
  print(cc.union(lb));

  //求差集
  print(cc.difference(lb));

  // 返回第一/最后一 个元素
  print(cc.first);
  print(cc.last);
}
