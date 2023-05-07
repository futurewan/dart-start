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

Future getIPAddress() {
  final url = 'https://httpbin.org/ip';
  return http.get(url).then((response) {
    String ip = jsonDecode(response.body)['origin'];
    return ip;
  });
}

void main() {
  ///  https://httpbin.org/ip
  getIPAddress().then((ip) => print(ip)).catchError((error) => print(error));
}
