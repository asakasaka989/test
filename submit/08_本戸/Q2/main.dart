void main() {
  for (int i = 1; i <= 9; i++) {
    String row = '';
    for (int j = 1; j <= 9; j++) {
      int ans = i * j;
      String ansString = ans.toString().padLeft(2, ' ');
      row += ansString + ' ';
    }
    print(row.trimLeft());
  }
}