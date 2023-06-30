void main(){
 //CarクラスとPlaneクラスのインスタンスを作成して、
 //各メソッドを呼び出してlogメソッドを使い動作していることがわかる
  Car car1 = Car(10);
  car1.move(15);
  car1.accelerate();
  car1.stop();
  car1.log();
  
  Plane plane1 = Plane(10);
  plane1.move(15);
  plane1.stop();
  plane1.takeOff();
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

class Car extends Vehicle{
  Car(int speed): super(speed);
  
  //乗り物の速度を10追加
  void accelerate(){
    speed += 10;
  }
  
  @override
  void move(int s){
    speed = s;
  }
  
  @override 
  void stop(){
    speed = 0;
  }
}

class Plane extends Vehicle{
  Plane(int speed): super(speed);
  
  //飛行機が離陸
  void takeOff(){
    print("離陸しました");
  }
  
    @override
  void move(int s){
    speed = s;
  }
  
  @override 
  void stop(){
    speed = 0;
  }
}