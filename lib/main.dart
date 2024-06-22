import 'dart:core';

class Car {
  // Properties
  String brand;
  String model;
  int year;
  double milesDriven;

  // Static property to keep track of the number of Car objects created
  static int numberOfCars = 0;

  // Constructor
  Car(this.brand, this.model, this.year, this.milesDriven) {
    numberOfCars++;
  }

  // Method to drive the car
  void drive(double miles) {
    milesDriven += miles;
  }

  // Getter methods
  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  // Create three Car objects
  Car car1 = Car('Toyota', 'Corolla', 2010, 50000.0);
  Car car2 = Car('Ford', 'Mustang', 2015, 30000.0);
  Car car3 = Car('Tesla', 'Model 3', 2020, 10000.0);

  // Drive each car a different number of miles
  car1.drive(150.0);
  car2.drive(200.0);
  car3.drive(300.0);

  // Print out the details of each car
  print('Car 1: ${car1.getBrand()} ${car1.getModel()}, Year: ${car1.getYear()}, Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge()} years');
  print('Car 2: ${car2.getBrand()} ${car2.getModel()}, Year: ${car2.getYear()}, Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge()} years');
  print('Car 3: ${car3.getBrand()} ${car3.getModel()}, Year: ${car3.getYear()}, Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge()} years');

  // Print out the total number of Car objects created
  print('Total number of cars created: ${Car.numberOfCars}');
}
