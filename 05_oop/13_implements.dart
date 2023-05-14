/// 接口
/// - 接口在Dart中就是一个类
///   - 与Java不同，Java中的接口需要用interface关键字声明，Dart中不需要
///   - 接口可以使任意类，但一般使用抽象类做接口
/// - 一个类可以实现（implements）多个接口，多个接口用逗号分隔
///   接口可以看成一个个小零件。类实现接口就相当于组装零件
/// - 普通类实现后，必须重写接口中所有的属性和方法

abstract class Processor {
  String cores; //内核
  arch(String name); //芯片制程
}

abstract class Camera {
  String resolution; //分辨率
  brand(String name); //品牌
}

class Phone implements Processor, Camera {
  @override
  String cores;

  @override
  String resolution;

  Phone(this.cores, this.resolution);

  @override
  arch(String name) {
    print('芯片制程：' + name);
  }

  @override
  brand(String name) {
    print('相机品牌：' + name);
  }
}

void main() {
  Phone p = new Phone('4核', '3000万');
  p.arch('4nm');
  p.brand('徕卡');
}
