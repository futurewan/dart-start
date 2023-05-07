class Rect {
  int width;
  int height;

  Rect()
      : width = 2,
        height = 8 {
    print('${this.width} -- ${this.height}');
  }
}

class Point {
  double x;
  double y;
  double z;

  Point(this.x, this.y, this.z);
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main() {
  var r = new Rect();

  var p = new Point.twoD(10, 20);
  print('${p.x},${p.y},${p.z}');
}
