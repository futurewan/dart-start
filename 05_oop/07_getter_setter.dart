/// Getter与Setter
/// - Getter(获取器)时通过get关键字修饰的方法
///   函数没有小括号，访问时也没有小括号（像访问属性一样访问方法）
/// - Setter(修改器)，是通过set关键字修饰的方法
///   访问时，像设置属性一样给函数传参

class Circle {
  final double PI = 3.1415926;
  num r;

  Circle(this.r);

  // num area() {
  //   return this.PI * this.r * this.r;
  // }

  // 使用getter声明方法，不需要小括号
  num get area {
    return this.PI * this.r * this.r;
  }

  //setter
  set setR(value) {
    this.r = value;
  }
}

void main() {
  var c = new Circle(10);
  c.setR = 20;
  print(c.area);
}
