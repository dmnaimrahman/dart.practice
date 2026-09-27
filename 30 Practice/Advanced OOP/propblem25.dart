bool isEqual<T>(T a, T b) {
  return a == b;
}

void main() {
  print(isEqual<int>(5, 5));
  print(isEqual<String>('dart', 'flutter'));
}
