void main(){
    print("car");
    var car1 = Car(5);
    car1.log();
    car1.move(9);
    car1.log();
    car1.accelerate();
    car1.log();
    car1.stop();
    car1.log();

    print("plane");
    var plane1 = Plane(6);
    plane1.log();
    plane1.move(4);
    plane1.log();
    plane1.takeOff();
    plane1.stop();
    plane1.log();
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

class Car extends Vehicle {
    Car(int speed) : super(speed);

    void accelerate(){
        this.speed += 10;
    }
    @override
    void move(int s){
        this.speed = s;
    }
    void stop(){
        this.speed = 0;
    }
}

class Plane extends Vehicle {
    Plane(int speed) : super(speed);
    void takeOff(){
        print("飛行機が離陸しました");
    }
    @override
    void move(int s){
        this.speed = s;
    }
    void stop(){
        this.speed = 0;
    }
}