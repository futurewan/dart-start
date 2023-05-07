/// - static 关键字用来指定静态成员
///   通过static修饰的属性是静态属性
///   通过static修饰的方法是静态方法
/// - 静态成员可以通过类名称直接访问（不需要实例化）
///   实例化是比较消耗资源的，声明静态成员，可以提高程序的性能
/// - 静态方法不能访问非静态成员，非静态方法可以访问静态成员
///   静态方法不能使用this关键字
///   不能使用this关键字，访问静态属性

class Person {
  static String name = '张三';
  int age = 18;
  static printInfo() {
    // print('name:${this.name}'); //不能通过this关键字，访问静态属性
    print('name:${name}');
    // print(age) //静态方法不能访问非静态属性（和方法）
  }

  printUserInfo() {
    //非静态方法可以访问静态属性
    print(name);
  }
}

void main() {
  print(Person.name);
  print(Person.printInfo());

  var p = new Person();
  // print(p.name) // 不能通过实例化对象访问实例属性
}
