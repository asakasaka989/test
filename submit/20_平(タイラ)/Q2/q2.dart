// 1
import 'Dart:io';

void main() {
    for (var x = 1; x < 10; x++){
        for (var y = 1; y < 10; y++){
            var sum = x * y;
            if (sum < 10){
                stdout.write("  $sum");    
            }else{
                stdout.write(" $sum");
            }
        }
        print("");
    }
    var array = [5,9,4,7,1];
    desc<int>(array);
}

// 2
void desc<T>(List<int> arr) {
    arr.sort();
    print(arr.reversed.toList());
}

