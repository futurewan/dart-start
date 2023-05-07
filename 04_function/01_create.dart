/**
 * 声明函数
 * - 直接声明
 * dart 中声明函数不需要 function 关键字
 * 
 * - 箭头函数
 * Dart中的箭头函数中，函数体只能写一行且不能带有结束的分号
 * Dart中的箭头函数，只是函数的一种简写方式（js中可以解决this指向问题）
 * 
 * - 匿名函数
 * - 立即执行函数
 */

void printInfo() {
  print('hello,world');
}

// 返回值要和函数声明的类型一致
int getNum() {
  return 1;
}

void main() {
  printInfo();

  var num = getNum();
  print(num);

  // 匿名函数
  var myPrint = (value) {
    print(value);
  };
  List fruits = ['苹果', '香蕉', '猕猴桃'];
  fruits.forEach(myPrint);

  //箭头函数 lambda
  fruits.forEach((element) => {print(element)}); //print后不可以加入分号
  fruits.forEach((element) => print(element));

  //立即执行函数
  ((int n) {
    print(n);
  })(17);
}
