// 抽象クラス
abstract class Vehicle {
  // 乗り物のスピード
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

// Carクラス
class Car implements Vehicle {
  int speed;

  Car(this.speed);

  @override
  void move(int s) {
    speed = s;
  }

  @override
  void stop() {
    speed = 0;
  }

  // 速度を10増加
  void accelerate() {
    speed += 10;
  }

  // 現在の速度出力
  @override
  void log() {
    print("Car speed : $speed");
  }
}

// Planeクラス
class Plane implements Vehicle {
  int speed;

  Plane(this.speed);

  @override
  void move(int s) {
    speed = s;
  }

  @override
  void stop() {
    speed = 0;
  }

  // 離陸
  void takeOff() {
    print("離陸します。");
  }

  // 現在の速度出力
  @override
  void log() {
    print("Plane speed : $speed");
  }
}

void main() {
  // Carクラスのインスタンスを作成
  Car car = Car(0);

  // Carクラスのメソッドを呼び出して動作を確認
  car.move(30);
  car.log();

  car.accelerate();
  car.log();

  car.stop();
  car.log();

  // Planeクラスのインスタンスを作成
  Plane plane = Plane(0);

  // Planeクラスのメソッドを呼び出して動作を確認
  plane.move(100);
  plane.log();

  plane.takeOff();

  plane.stop();
  plane.log();
}