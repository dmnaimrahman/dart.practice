String reverse(String text) {
  return text.split('').reversed.join();
}

void main() {
  print(reverse("Hello"));
}