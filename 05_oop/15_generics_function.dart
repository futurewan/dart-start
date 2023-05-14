/// 泛型
///

T getData<T>(T value) {
  return value;
}

void main() {
  print(getData('hello'));
}
