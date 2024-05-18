import 'dart:ffi';

void main() {
  final vehicle = Vehicle(speed: 10, isEngineering: false, isLighton: true);

  print(vehicle.speed);
  print(vehicle.height);
  vehicle.setHeight = 15;
  print(vehicle.height);
}

class Vehicle {
  int speed = 10;
  bool isEngineering = false;
  bool isLighton = true;

  Vehicle(
      {required this.speed,
      required this.isEngineering,
      required this.isLighton});

  int _height = 4;
  int _width = 5;

  int get height => _height;

  set setHeight(int h) {
    _height = h;
  }

  void accelerate() {
    print('accelerating vehicle ');
  }
}
