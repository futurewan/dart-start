/**
 * 函数参数
 * - 必填参数
 *    参数类型 参数名称
 * 
 * - 可选参数
 *  放在必选参数后面
 *  通过中括号包裹起来
 *  带默认值的可选参数
 * 
 * - 命名参数
 *  用大括号包裹起来
 *  调用函数式，命名参数的名称与生命函数中的名称保持一致
 * 
 * - 函数参数
 */

void main() {
  // 必填参数
  String userInfo(String name) {
    return '你好：${name}';
  }

  //可选参数
  String userInfo2(String name, [int age = 0]) {
    return '你好：${name}，年龄：${age}';
  }

  String res = userInfo('张三');
  print(res);

  String res2 = userInfo2('张三', 10);
  print(res2);

  //命名参数
  String userInfo3(String name, {int age = 0}) {
    return '你好：${name}，年龄：${age}';
  }

  //命名参数调用时，需要与声明时的形参一致
  String res3 = userInfo3('张三', age: 10);
  print(res3);

  var myPrint = (value) {
    print(value);
  };
  List fruits = ['苹果', '香蕉', '猕猴桃'];
  fruits.forEach(myPrint);
}
