int maxNumber(int a, int b, int c) {
  return max(a, max(b, c));
}

void main() {
  print(maxNumber(10, 25, 15));
}