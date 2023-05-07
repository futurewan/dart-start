/**
 * 构造器（构造函数）
 * 默认构造函数：与类同名的函数，在实例化时，自动被调用
 */

// class Point {
//   num x;
//   num y;

//   //声明普通构造函数
//   Point() {
//     x = 0;
//     y = 0;
//     this.x = 0;
//     this.y = 0;
//     // 当命令指向有歧义时。this不能省略（属性和函数同名）

//     print('我是默认构造函数，实例化时，会第一个被调用');
//   }
// }

// class Point {
//   num x, y;

//   Point(num x, num y) {
//     this.x = x;
//     this.y = y;
//   }
// }

class Point {
  num x, y;

  Point(this.x, this.y);
}

void main() {
  var p = new Point(3, 4);
  print('x:${p.x};y:${p.y}');
}
