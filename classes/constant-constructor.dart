class Location {
  final double lat;
  final double lng;

  const Location(this.lat, this.lng);
}

void main(List<String> args) {
  final sanFrancisco1 = new Location(18.123123, 12.123123);
  final sanFrancisco2 = new Location(18.123123, 12.123123);

  print(sanFrancisco1 == sanFrancisco2); // false

  const sanFrancisco3 = const Location(18.123123, 12.123123);
  const sanFrancisco4 = const Location(18.123123, 12.123123);

  print(sanFrancisco3 == sanFrancisco4); // true
  // In constants everything points to the same memory space
}
