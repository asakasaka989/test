abstract class Vehicle {
  int speed;

  Vehicle(this.speed);

  void move(int s) {
    speed = s;
  }

  void stop() {
    speed = 0;
  }

  void log() {
    print("speed: $speed");
  }
}


// vehicle type CAR
class Car extends Vehicle {
  Car(int speed) : super(speed);

  void accelerate() {
    speed += 10;
  }
}
//----------------

// vehicle type PLANE
class Plane extends Vehicle {
  Plane(int speed) : super(speed);

  void takeOff() {
    print("Plane is taking off.");
  }
}
//----------------

void main() {
  Car car = Car(0);
  Plane plane = Plane(0);

  car.move(50);
  car.log(); // Output: speed: 50

  car.accelerate();
  car.log(); // Output: speed: 60

  car.stop();
  car.log(); // Output: speed: 0

  plane.move(200);
  plane.log(); // Output: speed: 200

  plane.takeOff(); // Output: Plane is taking off.
}
