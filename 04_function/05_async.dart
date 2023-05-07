/**
 * 异步函数
 * 
 * JS中，异步函数通过Promise来实现
 * 
 * Dart中，异步函数通过Feature来实现
 * async函数返回一个Feature，await 用于等待Feature
 * 
 * 
 * 
 */
import 'dart:convert';

import 'package:http/http.dart' as http;

Future getIPAddress() async {
  final url = 'https://httpbin.org/ip';
  final response = await http.get(url);
  String ip = jsonDecode(response.body)['origin'];
  return ip;
}

void main() async {
  try {
    final ip = await getIPAddress();
    print(ip);
  } catch (e) {
    print(e);
  }
}
