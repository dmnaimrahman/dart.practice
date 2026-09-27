class MathHelper {
  static int add(int a, int b) => a + b;
  static int multiply(int a, int b) => a * b;
}

void main() {
  print('Sum: ${MathHelper.add(4, 5)}');
  print('Product: ${MathHelper.multiply(4, 5)}');
}
