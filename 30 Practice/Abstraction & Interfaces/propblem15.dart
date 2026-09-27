abstract class Shape {
  double calculateArea(); // abstract method — no body
}

class Square extends Shape {
  double side;
  Square(this.side);

  @override
  double calculateArea() => side * side;
}

void main() {
  Square sq = Square(6);
  print('Square Area: ${sq.calculateArea()}');
}
