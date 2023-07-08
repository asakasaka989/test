abstract class Vehicle {
    // 　乗り物のスピード
    int speed;

    Vehicle(this.speed);

    // 乗り物のspeedを設定
    void move(int s) {
        speed = s;
    }

    // 乗り物のspeedを0に設定
    void stop() {
        speed = 0;
    }

    // 現在の速度出力
    void log() {
        print("speed : $speed");
    }
}

// Carクラス
class Car extends Vehicle {
    Car(int speed) : super(speed);

    // 乗り物のspeedを10増加
    void accelerate() {
        speed += 10;
    }
}

// Planeクラス
class Plane extends Vehicle {
    Plane(int speed) : super(speed);

    // 飛行機が離陸
    void takeOff() {
        print("離陸します。");
    }
}

// main関数
void main() {
    Car car = Car(0);
    Plane plane = Plane(0);

    car.move(50); // Carのspeedを設定
    car.log();

    car.accelerate(); // Carのspeedを10増加
    car.log();

    car.stop(); // Carのspeedを0に設定
    car.log();

    plane.move(100); // Planeのspeedを設定
    plane.log();

    plane.takeOff(); // 離陸

    plane.stop(); // Planeのspeedを0に設定
    plane.log();
}
