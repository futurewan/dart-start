/// - 元数据以@开头，可以给代码标记一些额外的信息(不影响程序的运行)
///   元数据可以用来库，类，构造器，函数，字段，参数或变量声明的前面
/// - @override(重写)
///   某方法添加注解后，表示重写了父类中的同名方法
/// - @required（必填）
///   可以通过@required来注解Dart中的命名参数，用来只是它是必填参数
/// - @deprecated（弃用）
///   若某类或者某方法加载注解之后，表示不建议使用

class Phone {
  @deprecated
  activate() {
    turnOn();
  }

  turnOn() {
    print('开机');
  }
}

void main() {
  var p = new Phone();
  p.activate();
}
