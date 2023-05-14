class SomeBaseClass {}

class Foo<T extends SomeBaseClass> {
  String toString() => "instance of 'Foo ${T}'";
}

class Extender extends SomeBaseClass {}

void main() {
  var someBaseClassFoo = Foo<SomeBaseClass>();
  print(someBaseClassFoo);

  var extenderFoo = Foo<Extender>();
  print(extenderFoo);

  var foo = Foo();
  print(foo);
}
