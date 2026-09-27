void main() {
  Map<String, dynamic> person = {
    "name": "Naiyemur",
    "address": "Sylhet",
    "age": 22,
    "country": "Bangladesh"
  };

  person["country"] = "Canada";

  print(person.keys);
  print(person.values);
}