void main() {
  Map<String, String> phone = {
    "name": "Naim",
    "home": "1234",
    "work": "5678",
    "phone": "9999"
  };

  var result = phone.keys.where((key) => key.length == 4);

  print(result);
}