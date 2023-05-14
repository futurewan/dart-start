import 'Father.dart';

class Son extends Father {
  //将前面的job传给后面的job；通过super继承父类的普通构造函数
  // Son(String jon) : super(jon);

  // Son(String jon) : super.origin(jon);
  Son.origin(String jon) : super.origin(jon); //or

  //覆写父类方法，写和不写一样的
  @override
  say() {
    super.say(); //访问父类方法
    print('我是刘禅，我爹是${super.name}，他的工作是${super.job}');
  }
}
