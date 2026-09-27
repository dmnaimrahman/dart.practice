class Car {
  String transmissionType;

  Car.manual() : transmissionType = 'Manual' {
    print('This car has a manual transmission.');
  }

  Car.automatic() : transmissionType = 'Automatic' {
    print('This car has an automatic transmission.');
  }
}

void main() {
  Car car1 = Car.manual();
  Car car2 = Car.automatic();

  print(car1.transmissionType);
  print(car2.transmissionType);
}
