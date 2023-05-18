/// 引入部分库（按需加载）
/// 包含引入(show) 指定包含引入的内容
/// 排除引入(hide) 隐藏后面的内容

import 'lib/common.dart' show f1, f3;

void main() {
  f1();
  // f2();
  f3();
}
