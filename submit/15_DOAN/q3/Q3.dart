abstract class Vehicle {
    int speed;
  
    Vehicle(this.speed);
  
    void move(int s);
    void stop();
  
    void log() {
      print("Speed: $speed");
    }
  }
  
  class Car extends Vehicle {
    Car(int speed) : super(speed);
  
    void accelerate() {
      speed += 10;
    }
    @override
    void move(int s) {
      speed =s ;
    
    }
    @override
    void stop() {
     speed =0;
    }
  }
  
  class Plane extends Vehicle {
    Plane(int speed) : super(speed);
  
    void takeOff() {
      print("離陸しました");
    }
   @override
    void move(int s) {
       speed =s ;
      
    }
   @override
    void stop() {
     speed =0;
    }
  }
  
  void main() {
    Car car = Car(0);
    Plane plane = Plane(0);
  
    car.accelerate();
    car.move(60);
     car.log();
    car.stop();
   
  
    plane.takeOff();
    plane.move(500);
    plane.log();
    plane.stop();
    
  }
  

