void main() {
  var str1 = 'hello,world';
  print(str1);

  String str2 = "hello,world";
  print(str2);

  //通过3个引号声明字符串
  String str3 = '''hello
  world
  ''';
  print(str3);

  //常见操作
  //字符串拼接
  print(str1 + str2);
  print("$str1 $str2");

  //字符串分割
  print(str1.split(''));

  //字符串裁切
  print('  abc   '.trim());

  //判断字符串是否为空
  print(''.isEmpty);
  print(''.isNotEmpty);

  //字符串替换
  print(str1.replaceAll('world', 'dart'));
  print('43434reg replace'.replaceAll(RegExp(r'\d'), '_'));

  //正则匹配手机号
  var isPhone = RegExp(r'^1\d{10}$');
  print(isPhone.hasMatch('123234234'));

  //查找字符串
  print(str1.contains('e'));
  // 定位字符串
  print(str1.indexOf('e'));
}
