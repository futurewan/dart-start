/*
 * Map是一个无序的键值对映射，通常被称作哈希或自字典
 * 类似JS中的对象
 */

void main() {
  //字面量
  var person = {'name': '张三', 'age': 20};
  print(person);

  //构造函数
  var p = Map(); //也可以在Map前写new
  p['name'] = '李四';
  p['age'] = 18;
  print(p);

  // 访问属性
  print(p['name']);

  //判断Map中的key是否存在
  print(p.containsKey('name'));
  print(p.containsKey('sex'));

  //赋值
  //如果Key不存在，赋值
  p.putIfAbsent('gender', () => '男');
  print(p);
  p.putIfAbsent('gender', () => '女'); //不会赋值成功
  print(p);

  // 获取Map中所有的 key value
  print(p.keys);
  print(p.values);

  //删除元素
  //根据条件删除
  p.removeWhere((key, value) => key == 'gender');
  print(p);
}
