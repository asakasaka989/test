import 'Dart:io';

void main() {
    for(var i = 1; i <= 9; i++)  {
        for(var j = 1; j <= 9; j++) {
            var answer = i * j;
            if (answer<= 9) {
                stdout.write(" ");
            }
            stdout.write(answer);
            stdout.write(" ");
        }
    print("");
    }
}
