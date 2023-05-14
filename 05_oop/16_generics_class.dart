/// 泛型类

class CommonClass {
  Set s = new Set<int>();

  void add(int value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

class GenericsClass<T> {
  Set s = new Set<T>();
  void add(T value) {
    this.s.add(value);
  }

  void info() {
    print(this.s);
  }
}

void main() {
  CommonClass c = new CommonClass();
  c.add(1);

  c.info();

  GenericsClass g = new GenericsClass<String>();
  g.add('1');
  g.add('2');
  g.info();

  Set s = new Set<int>();
  s.add(1);
  s.add(2);
  print(s);
}
