import 'dart:io';

void main() {
  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 9; j++) {
      stdout.write('${i * j} ');
    }
    print(" ");
  }
}