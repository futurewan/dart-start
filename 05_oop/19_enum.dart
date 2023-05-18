/// 枚举
/// - 枚举是数量固定的常量值，通过enum关键字声明
///   enum Color{red,green,blue}
/// - 枚举的values常量，可以获取所有枚举值列表
/// - 可以通过index获取值的索引

enum Color { red, green, blue }

void main() {
  //通过index返回枚举值中具体常量的值
  print(Color.red.index);

  //通过values返回常量列表
  print(Color.values);

  List<Color> colors = Color.values;
  print(colors);

  //通过下标，返回列表中的内容
  print(colors[0]);
  colors.forEach((element) {
    print('value: $element,index:${element.index}');
  });
}
