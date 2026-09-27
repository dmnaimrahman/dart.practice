void main() {
  List<String> friends = [
    "Alex",
    "Arif",
    "John",
    "Naim",
    "David",
    "Amin",
    "Rahim"
  ];

  var result = friends.where((name) => name.startsWith("A"));

  print(result);
}