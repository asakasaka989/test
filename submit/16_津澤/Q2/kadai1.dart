
void main() {
  for (int i = 1; i <= 9; i++) {
    String line = '';
    for (int j = 1; j <= 9; j++) {
      int ans = i * j;
      String ansString = ans.toString().padLeft(2, ' ');
      line += ansString + ' ';
    }
    print(line.trimLeft());
  }
}