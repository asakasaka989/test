void main() {
    Car car = Car(10);
    car.log();
    car.move(5);
    car.log();
    car.accelerate();
    car.log();
    car.accelerate();
    car.log();
    car.stop();
    car.log();

    Plane plane = Plane(1);
    plane..log()
        ..move(20)
        ..log()
        ..takeOff()
        ..stop()
        ..log();
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

class Car implements Vehicle{
    int speed;

    Car(this.speed);

    @override
    void move(int s){
        speed = s;
    }
    @override
    void stop(){
        speed = 0;
    }
    @override
    void log(){
        print("Car_speed : $speed");
    }
    
    void accelerate(){
        speed += 10;
    }
}

class Plane implements Vehicle{
    int speed;

    Plane(this.speed);

    @override
    void move(int s){
        speed = s;
    }
    @override
    void stop(){
        speed = 0;
    }
    @override
    void log(){
        print("Plane_speed : $speed");
    }

    void takeOff(){
        print("離陸");
    }
}
