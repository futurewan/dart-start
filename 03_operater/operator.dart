/**
 * 地板除 (~/)  - 对除法的结果做向下取整
 * 类型判断运算符 (is| is!) instance of
 * 避空运算符 （?? | ??=）
 * 条件属性访问(?.)
 * 级联运算符(..)  返回对象的引用
 */

void main() {
  //地板除
  print(7 ~/ 4);

  //类型判断运算符
  List list = [];
  if (list is List) {
    print('list is List');
  } else {
    print('list is not List');
  }

  if (list is! List) {
    print('不是列表');
  } else {
    print('是列表');
  }

  //避空运算符
  print(1 ?? 3); // 1
  print(null ?? 12); //12

  var foo;
  print(foo ?? 0);

  var a;
  // if (a == null) {
  //   a = 3;
  // }
  a ??= 3; //和上面的语句一样
  a ??= 6;
  print(a);

  //条件属性运算符（保护可能为空的属性）
  var m = new Map();
  print(m.length);
  var obj;
  print(obj?.length);

  //级联运算符
  // Set s = new Set();
  // s.add(1);
  // s.add(2);
  // s.add(3);
  // s.remove(2);
  // print(s);

  Set s = new Set();
  s
    ..add('a')
    ..add('b')
    ..add('c')
    ..remove('b');
  print(s);
}
