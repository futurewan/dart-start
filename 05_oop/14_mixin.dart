/// 混入
/// - 混入是一段公共代码。混入有两种声明方式
///  - 将类当做混入 class MixinA{ ... }
///   - 作为Mixin的类只能继承自Object，不能继承其他类
///   - 作为Mixin的类不能有构造函数
///  - 使用mixin关键字声明 mixin MixinB { ... }
/// - 混入可以提高代码复用的效率，普通类可以通过with来使用混入
/// 使用多个混入时，后引用的混入会覆盖之前混入中的重复的内容

class MixinA {
  String name = 'MixinA';
  void printA() {
    print('A');
  }

  void run() {
    print('A is run');
  }
}

mixin MixinB {
  String name = 'MixinB';
  void printB() {
    print('B');
  }

  void run() {
    print('B is run');
  }
}

class MyClass with MixinA, MixinB {}

void main() {
  var c = new MyClass();
  c.printA();
  c.printB();
  print(c.name);
  c.run();
}
