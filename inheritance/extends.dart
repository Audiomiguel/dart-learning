class Vehicle {
  bool isTurnedOn = false;

  void drive() {
    print('Vehicle is driving');
  }

  void turnOn() {
    isTurnedOn = true;
    print('Vehicle is turned on');
  }

  void turnOff() {
    isTurnedOn = false;
    print('Vehicle is turned off');
  }
}

class Car extends Vehicle {
  int kilometers = 0;

  void drive() {
    print('Car is driving');
  }
}

void main(List<String> args) {
  final ford = new Car()
    ..turnOn()
    ..drive()
    ..turnOff();
}
