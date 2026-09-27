class Shape {
  double area() => 0.0;
}

class Rectangle extends Shape {
  double length, width;
  Rectangle(this.length, this.width);

  @override
  double area() => length * width;
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => 3.1416 * radius * radius;
}

void main() {
  Shape s1 = Rectangle(4, 5);
  Shape s2 = Circle(3);
  print('Rectangle Area: ${s1.area()}');
  print('Circle Area: ${s2.area()}');
}
