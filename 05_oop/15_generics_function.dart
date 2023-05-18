/// 泛型
///

// T getData<T>(T value) {
//   return value;
// }

//只约定参数类型，不约定函数返回值类型
getData<T>(T value) {
  return value;
}

void main() {
  print(getData<int>(90));
  print(getData<String>('hello'));
}
