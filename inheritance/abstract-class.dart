abstract class Vehicle {
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

  bool revisarMotor();
}

class Car extends Vehicle {
  int kilometers = 0;

  void drive() {
    print('Car is driving');
  }

  @override
  bool revisarMotor() {
    return true;
  }
}

void main(List<String> args) {
  final ford = new Car()
    ..turnOn()
    ..drive()
    ..turnOff();
}
