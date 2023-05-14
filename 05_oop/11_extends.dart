/// 类与对象-继承
/// - 根据类的先后顺序，可以讲类分成父类和子类
/// - 子类通过extends关键字继承父类
///   继承后，子类可以使用父类中，课件的属性和方法
/// - 子类中，可以通过@override元数据来标记“覆写”方法
///   “覆写”方法：子类中与父类中同名的方法
/// - 子类中，可以通过super关键字来引用父类中，可见的内容
///   属性
///   方法（普通构造函数，命名构造函数）

import './lib/Father.dart';
import './lib/Son.dart';

void main() {
  var f = new Father('皇帝');
  print(f.name);

  var s = new Son.origin('卖草鞋的');
  print(s.name);
  s.say();
  // s._money; // 子类不能访问父类私有变量
}
