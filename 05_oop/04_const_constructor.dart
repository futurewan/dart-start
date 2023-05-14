/**
 * 常量构造函数
 * 如果类生成的对象不会改变，您可以通过常量构造函数使这些对象成为编译时常量
 */

class Point {
  num x, y;

  Point(this.x, this.y);
}

class ImmutablePoint {
  //属性必须通过 final 声明
  final num x;
  final num y;

  // 常量构造函数，必须通过const 声明
  const ImmutablePoint(this.x, this.y);
}

void main() {
  var p1 = new Point(1, 2);
  var p2 = new Point(1, 2);

  print(p1 == p2);

  //常量构造函数可以当做普通构造函数使用
  var p3 = new ImmutablePoint(1, 2);
  var p4 = new ImmutablePoint(1, 2);

  print(p3 == p4);

  //声明不可变对象，必须通过const关键字
  var p5 = const ImmutablePoint(1, 2);
  var p6 = const ImmutablePoint(1, 2);

  print(p5 == p6);
}
