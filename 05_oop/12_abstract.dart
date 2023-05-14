/// 抽象类
/// - 抽象类是用 abstract 关键字修饰的类
/// - 抽象类的作用是充当普通类的模版，约定一些必要的属性和方法
/// - 抽象方法是指没有方法体的方法
///   抽象类中一般都有抽象方法，也可以没有抽象方法
///   普通类中，不能有抽象方法
/// - 抽象类不能被实例化（new）
/// - 抽象类可以被普通类继承
///   如果普通类继承抽象类，必须实现抽象类中所有的抽象方法
/// - 抽象类还可以充当接口被实现（implements ）

abstract class Phone {
  //声明抽象方法
  void processor(); //手机处理器
  void camera(); //摄像头
}

class Xiaomi extends Phone {
  //普通类继承了抽象类，必须实现抽象类中所有方法
  @override
  void processor() {
    print('骁龙888');
  }

  @override
  void camera() {
    print('三星摄像头');
  }
}

class Huawei extends Phone {
  @override
  void processor() {
    print('麒麟990');
  }

  @override
  void camera() {
    print('徕卡摄像头');
  }
}

void main() {}
