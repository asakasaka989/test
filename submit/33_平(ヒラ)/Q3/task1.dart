void main() {
  Car car = new Car(10);
  Plane plane = new Plane(20);

  print("Car");
  car.move(1);
  car.log();
  car.stop();
  car.log();
  car.accelerate();
  car.log();

  print("Plane");
  plane.move(1);
  plane.log();
  plane.stop();
  plane.log();
  plane.takeOff();
  plane.log();
}

abstract class Vehicle {
  // 　乗り物のスピード
  int speed;

  Vehicle(this.speed);

  // 乗り物のspeedを設定する
  void move(int s);

  // 乗り物のspeedを0に設定する
  void stop();

  // 現在の速度出力
  void log() {
    print("speed : $speed");
  }
}

class Car extends Vehicle {
  Car(super.speed);

  @override
  void move(int s) {
    this.speed = s;
  }

  @override
  void stop() {
    this.speed = 0;
  }

  void accelerate() {
    this.speed += 10;
  }
}

class Plane extends Vehicle {
  Plane(super.speed);

  @override
  void move(int s) {
    this.speed = s;
  }

  @override
  void stop() {
    this.speed = 0;
  }

  void takeOff() {
    print("離陸しました");
  }
}
