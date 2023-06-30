void main(){
  Car car=Car(0);
  
  car.move(60);
  car.log();
  
  car.accelerate();
  car.log();
  
  
  Plane plane=Plane(0);
  
  plane.move(120);
  plane.log();
  plane.takeOff();
}



// 抽象クラス
abstract class Vehicle {
 
 // 乗り物のスピード
 int speed;

 Vehicle(this.speed);
 // 乗り物のspeedを設定する
 void move(int s);
 
 // 乗り物のspeedを0に設定する
 void stop();
 
 // 現在の速度出⼒
 void log(){
 print("speed : $speed");
 }
}

class Car extends Vehicle{
  Car(int speed) : super(speed);
  
  @override
  void move(int s){
    speed=s;
  }
  
  @override
  void stop(){
    speed=0;
  }
  
  void accelerate(){
    speed +=10;
  }
  
}

class Plane extends Vehicle{
  Plane(int speed) : super(speed);
  
  @override
  void move(int s){
    speed=s;
  }
  
  @override
  void stop(){
    speed=0;
  }
  
  void takeOff(){
    print("離陸しました");
    
  }
  
}

