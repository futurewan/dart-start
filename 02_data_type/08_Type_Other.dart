/*
 * Runes(符文)
 * 符号表情或特定文字
 * https://copychar.cc
 * 
 * 
 * Symbol
 * #开头的标识符
 * 
 * dynamic
 * 动态数据类型
 */

void main() {
  var str = '😀';
  print(str);
  print(str.length); //UTF-16
  print(str.runes.length); //UTF-32

  //Runes 可以将UTF-32字符集表示的内容转成符号
  Runes input = new Runes('\u{1f680}');
  print(new String.fromCharCodes(input));

  //Symbol
  var a = #abc;
  print(a);

  var b = new Symbol('abc');
  print(b);

  print(a == b);

  /// dynamic是Dart中的一种类型注解，它表示该变量可以具有任何类型的值 
  /// 使用dynamic类型时，变量的类型将在运行时确定，而不是在编译时确定。这意味着可以对dynamic类型的变量进行任何操作，而不会在编译时引发类型错误
  dynamic foo = 'bar';
  foo = 123; // 可以给foo变量赋任意值
  print(foo);
  
  /// var是Dart中的一种关键字，用于在声明变量时进行类型推断。
  /// 使用var关键字声明的变量的类型，将在编译时根据其初始值进行推断，一旦变量的类型被推断，它将被视为具有该类型，并且在后续使用中不能更改为其他类型
  var bar;
  bar='bar';
  bar=true;
  
  /// var 声明变量，如果没有初始值有值，赋值不可以改变类型
  var bar = 'bar';
  //   bar=true; // 会报错
  print(bar);
  
  /// Object是Dart中的根类，所有其他类都直接或间接地继承自Object类。
  /// Object是Dart类型系统中的顶级类型，这意味着可以将任何对象赋值给Object类型的变量。
  /// 然而，由于Object是一个通用的基类，它不具备其他类的特定方法和属性，需要进行类型检查和转换才能访问。
  Object myObject = 'Hello';
  if (myObject is String) {
    String myString = myObject as String;
    print(myString.length);
  }
}
