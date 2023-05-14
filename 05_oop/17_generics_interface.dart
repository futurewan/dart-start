/// 泛型接口

abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print('文件缓存：key=${key} value=${value}');
  }
}

void main() {
  FileCache fc = new FileCache<String>();
  fc.setByKey('buyData', '2023-5-15');
  // fc.setByKey('buyData', 90); //type 'int' is not a subtype of type 'String' of 'value'
}
