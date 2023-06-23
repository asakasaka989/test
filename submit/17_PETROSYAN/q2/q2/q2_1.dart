void main() {
  for (var a = 1; a <= 9; a++) {
    String row = '';
    for (var b = 1; b <= 9; b++) {
      row += ' ${(a * b).toString().padLeft(2)} ';
    }
    print(row);
  }
}
//...I'd be glad if I successfully "pull-request" this