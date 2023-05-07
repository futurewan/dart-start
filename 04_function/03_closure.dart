/**
 * main - Global 
 * 
 * - 作用域
 * 内层函数可以访问外层变量，反则不可以
 * 
 * - 闭包
 * Dart中闭包的视线方式与JavaScript中完全一致
 * 使用时机：既能重用变量，又保护变量不被污染
 * 实现原理：外层函数被调用后，外层函数的作用域对象被内层函数引用着，
 * 导致外层函数的作用域对象无法释放，从而形成闭包。
 * 
 */

var globalNum = 100;
void main() {
  printInfo() {
    var localNum = 10;
    localNum--;
    print(localNum);
    print(globalNum);
  }

  printInfo();

  //闭包

  printInfo();
  printInfo();

  parent() {
    var money = 1000;
    return () {
      money -= 100;
      print(money);
    };
  }

  var p = parent();
  p();
  p();
  p(); //money的值会递减
}
