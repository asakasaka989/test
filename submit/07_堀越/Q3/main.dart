//乗り物を表す抽象クラスVehicleがある
//このクラスには、乗り物のスピードを表すspeedフィールドと、以下のメソッドが定義されている。
// void move(int s): 乗り物の速度を引数sで設定します
//void stop(): 乗り物の速度を0に設定します

abstract class Vehicle {
  
  // 　乗り物のスピード
  int speed;

  Vehicle(this.speed);

  // 乗り物のspeedを設定する
  void move(int s);
  
  // 乗り物のspeedを0に設定する
  void stop();
  
  // 現在の速度出力
  void log(){
    print("speed : $speed");
  }
}

//下記条件を満たすCarクラスとPlaneクラスを作成せよ
//条件１：
//Carクラスには、Vehicleクラスを継承しているだけでなく、以下のメソッドを追加すること。
//void accelerate(): 乗り物の速度を10増加
//Car
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

  // 現在速度
  @override
  void log() {
    print("Car speed : $speed");
  }
}

//条件２：
//Planeクラスには、Vehicleクラスを継承しているだけでなく、以下のメソッドが追加を追加すること
//void takeOff(): 飛行機が離陸。（printで離陸がわかるログを出力）
//Plane
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

  //takeOff
  void takeOff() {
    print("離陸します。");
  }

  //現在速度
  @override
  void log() {
    print("Plane speed : $speed");
  }
}

//条件３：
//main関数を作成し、CarクラスとPlaneクラスのインスタンスを作成して、
//各メソッドを呼び出してlogメソッドを使い動作していることがわかるコードを示す
void main() {
  Car car = Car(0);

  car.move(30);
  car.log();
  car.accelerate();
  car.log();
  car.stop();
  car.log();


  Plane plane = Plane(0);
  plane.move(100);
  plane.log();
  plane.takeOff();
  plane.stop();
  plane.log();
}
