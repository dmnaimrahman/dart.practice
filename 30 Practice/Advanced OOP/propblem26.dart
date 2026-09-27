T findLargest<T extends num>(T a, T b) {
  return a > b ? a : b;
}

void main() {
  print('Largest: ${findLargest(10, 20)}');
  print('Largest: ${findLargest(3.5, 2.1)}');
}
