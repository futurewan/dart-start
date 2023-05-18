/// as 给库添加前缀，解决命名冲突问题

import 'lib/common.dart';
import 'lib/function.dart' as func;

void main() {
  f1();
  func.f1();
}
