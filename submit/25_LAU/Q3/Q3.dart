// Q3 ----------------------------------------------

void main() {
    Car car = Car(0);
    Plane plane = Plane(0);

    car.move(20);
    car.log();
    car.stop();
    car.log();
    car.accelerate();
    car.log();

    plane.move(300);
    plane.log();
    plane.takeOff();
    plane.stop();
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
  void log(){
    print("speed : $speed");
  }
}

class Car implements Vehicle {
    int speed;
    Car(this.speed);

    void accelerate(){
        speed += 10;
    }

    @override
    void move(int s){
        speed = s;
    }
    void stop(){
        speed = 0;
    }

    void log(){
    print("Car speed : $speed");
  }
}

class Plane implements Vehicle {
    int speed;
    Plane(this.speed);

    void takeOff(){
        print("飛行機が離陸しました。");
    }

    @override
    void move(int s){
        speed = s;
    }
    void stop(){
        speed = 0;
    }

    void log(){
    print("Plane speed : $speed");
  }
}