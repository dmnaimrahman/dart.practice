class Guest {
  String name;
  String contact;

  Guest(this.name, this.contact);
}

class Room {
  int roomNumber;
  String type;
  double pricePerNight;
  bool isAvailable;

  Room(
    this.roomNumber,
    this.type,
    this.pricePerNight, {
    this.isAvailable = true,
  });
}

class Reservation {
  Guest guest;
  Room room;
  int nights;

  Reservation(this.guest, this.room, this.nights) {
    room.isAvailable = false;
  }

  double totalCost() => room.pricePerNight * nights;

  void printReceipt() {
    print('--- Reservation Receipt ---');
    print('Guest: ${guest.name} (${guest.contact})');
    print('Room: ${room.roomNumber} - ${room.type}');
    print('Nights: $nights');
    print('Total Cost: \$${totalCost()}');
  }
}

void main() {
  Guest g1 = Guest('Mahfuz Ahmed', '01711-000000');
  Room r1 = Room(101, 'Deluxe', 120.0);

  Reservation res1 = Reservation(g1, r1, 3);
  res1.printReceipt();

  print('Room 101 available? ${r1.isAvailable}');
}
