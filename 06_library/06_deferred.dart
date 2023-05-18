/// 延迟加载

import 'lib/function.dart' deferred as func;

void main() {
  print('1');
  greet();
  print('2');
  print('3');
}

Future greet() async {
  await func.loadLibrary();
  func.hello();
}
