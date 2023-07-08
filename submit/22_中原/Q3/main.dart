void main(){
  print("Car");
  var car1 = Car(0);
  car1..move(5)..log()..accelerate() ..log();
  car1.stop();

  print("Plane");
  var plane1 = Plane(200);
  plane1..move(100)..takeOff() ..log() ..stop() ..log();
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
  void log(){
    print("speed : $speed");
  }
}

class Car extends Vehicle{
  Car(int speed) : super(speed);
  void accelerate(){
    this.speed += 10;
  }
  @override
  void move(int s){
    this.speed = s;
    return;
  }
  void stop(){
    this.speed = 0;
  }
}

class Plane extends Vehicle{
  Plane(int speed) : super(speed);
  void takeOff(){
    print("飛行機が離陸しました。");
  }

  @override
  void move(int s){
    this.speed = s;
    return;
  }
  void stop(){
    this.speed = 0;
  }
}
