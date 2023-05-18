/// 自定义库-通过library来声明库
/// - 每个Dart文件默认都是一个库，只是没有使用library来显示声明
/// - Dart使用_ 开头的标识符，表示库内访问可见（私有 ）
/// - library关键字声明的库名称建议使用：小写字母+下划线

import 'lib/MyCustom.dart';

void main() {
  MyCustom mc = new MyCustom();
  mc.info();
  print(MyCustom.version);
}
