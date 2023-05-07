/*列表遍历
  forEach()
  map() 生成新列表
  where()  返回满足条件的数据
  any()  只要有一项满足条件 返回true
  every() 每个都满足条件
  */

void main() {
  var numbs = [1, 2, 3];
  for (var i = 0; i < numbs.length; i++) {
    print(numbs[i]);
  }

  for (var item in numbs) {
    print(item);
  }

  numbs.forEach((element) {
    print(element);
  });

  // var numbs2 = [];
  // for (var i = 0; i < numbs.length; i++) {
  //   numbs2.add(numbs[i] * numbs[i]);
  // }
  // print(numbs2);

  //map 返回新列表
  var numbs2 = numbs.map((e) => e * e);
  print(numbs2.toList());

  //where 返回符合条件的元素
  // 判断数字是否是奇数
  bool isOdd(n) {
    return n % 2 == 1;
  }

  var oddNum = numbs.where((element) => isOdd(element));
  print(oddNum.toList());

  //any 至少有一个奇数
  print(numbs.any(isOdd));

  //every 判读啊是否都是奇数
  print(numbs.every(isOdd));

  //扩展
  var pairs = [
    [1, 2, 3],
    [4, 5, 6]
  ];
  var flattened = pairs.expand((element) => element).toList();
  print(flattened);

  //折叠 对列表每一项做累计操作
  int result = numbs.fold(1, (p, element) => p * element);
  print(result);
}
