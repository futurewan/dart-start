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

  //生命动态类型的变量
  dynamic foo = 'bar';
  foo = 123;
  print(foo);
}
