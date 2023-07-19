void main() {
  //我是单行注释
  /*
    我是多行注射
    */
  /// 文档注释

  // 声明整数
  int number = 1;
  print(number);

//浮点数
  double price = 1.2;
  print(price.toInt());

  // 数值类型
  num n1 = 2;
  print(n1);

  //  类型转换
  print(n1.toInt()); // 向下取整
  // 四舍五入
  print(3.1415926.round());
  print(3.1415926.toStringAsFixed((4)));

  //余数
  print(10.remainder(4));

  // 数字比较 0 相同  1 大于  -1 小于
  print(10.compareTo(12));
}
