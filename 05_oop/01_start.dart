/**
 * 类 
 * 类是通过class声明的代码段
 *  属性
 *  方法
 * 
 * 对象是类的实例化结果（var obj = new MyClass()）
 * 
 * 面向对象编程（OOP） Dart
 * 
 * 面向过程编程（POP） JS
 * 
 */
class Person {
  // 声明类的属性（变量）
  String name = '张三';

  //类的方法
  void getName() {
    print('my name is ${name}');
  }
}

void main() {
  //实例化类，得到对象
  Person p = new Person();
  print(p.name);

  p.getName();

  // Dart 中所有内容都是对象
  Map m = new Map();
  m.addAll({"name": '李四', "age": 20});
  print(m.length);
}
