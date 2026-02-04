import 'dart:io';

void main() {

  print('Enter driver name:');
  String? name = stdin.readLineSync();

  print('Enter driver age:');
  String? ageInput = stdin.readLineSync();
  int age = int.parse(ageInput ?? '0');

  print('Enter vehicle type:');
  String? vehicle = stdin.readLineSync();

  Driver driver = Driver(name!, age, vehicle!);
  print('\n Driver Information: ${driver.getInfo()} \n\n');



  print('Enter distance in km:');
  String? distanceInput = stdin.readLineSync();
  double distance = double.parse(distanceInput ?? '0');

  BikeRide bikeRide = BikeRide();

  print('Ride Fare Calculation:');
  printFare(bikeRide, distance);
}



class Person {
  String _name;
  int _age;
  Person(this._name, this._age);
  String get name => _name;
  int get age => _age;
}

class Driver extends Person {
  String vehicle;
  Driver(String name, int age, this.vehicle) : super(name, age);

  @override
  String getInfo() {
    return 'Name: $name, Age: $age, Vehicle: $vehicle';
  }
}


abstract class Ride {
  double calculateFare(double distance);
}

class BikeRide implements Ride {
  @override
  double calculateFare(double distance) {
    return distance * 20.0;
  }
}


void printFare(Ride ride, double distance) {
  double fare = ride.calculateFare(distance);
  print('Distance: ${distance}km, Fare: ${fare.toStringAsFixed(2)} Taka');
}